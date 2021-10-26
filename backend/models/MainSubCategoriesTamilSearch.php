<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\MainSubCategoriesTamil;

/**
 * MainSubCategoriesTamilSearch represents the model behind the search form of `backend\models\MainSubCategoriesTamil`.
 */
class MainSubCategoriesTamilSearch extends MainSubCategoriesTamil
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['sub_catid', 'main_catid'], 'integer'],
            [['sub_catname', 'sub_cat_imageurl'], 'safe'],
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
        $query = MainSubCategoriesTamil::find();

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
            'main_catid' => $this->main_catid,
            'sub_catstockprice' => $this->sub_catstockprice,
            'sub_catretailprice' => $this->sub_catretailprice,
        ]);

        $query->andFilterWhere(['like', 'sub_catname', $this->sub_catname])
            ->andFilterWhere(['like', 'sub_cat_imageurl', $this->sub_cat_imageurl]);

        return $dataProvider;
    }
}
