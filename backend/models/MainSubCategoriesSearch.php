<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MainSubCategories;

/**
 * MainSubCategoriesSearch represents the model behind the search form of `\backend\models\MainSubCategories`.
 */
class MainSubCategoriesSearch extends MainSubCategories
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['sub_catid'], 'integer'],
            [['sub_catname','main_catid','sub_cat_imageurl'], 'safe'],
            [['sub_catstockprice', 'sub_catretailprice'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = MainSubCategories::find();
        $query->joinWith('maincat');

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'sub_catid' => $this->sub_catid,
            'sub_catstockprice' => $this->sub_catstockprice,
            'sub_catretailprice' => $this->sub_catretailprice,
        ]);
        $query->andFilterWhere(['like','main_categories.main_cat_name', $this->main_catid]);

        $query->andFilterWhere(['like', 'sub_catname', $this->sub_catname])
            ->andFilterWhere(['like', 'sub_cat_imageurl', $this->sub_cat_imageurl]);

            

        return $dataProvider;
    }
}
