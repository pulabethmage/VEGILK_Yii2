<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\SupplierDetail;

/**
 * SupplierDetailSearch represents the model behind the search form of `backend\models\SupplierDetail`.
 */
class SupplierDetailSearch extends SupplierDetail
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Supplier_ID', 'Mobile_No', 'Office_No', 'sup_otp', 'Seller_Stat'], 'integer'],
            [['Name', 'Gender', 'Nic', 'Address', 'sup_password', 'Reg_Date', 'Email', 'sup_profile_Image_Id', 'sup_district', 'sup_govicenter'], 'safe'],
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
        $query = SupplierDetail::find();

        $query->joinWith('district');
        $query->joinWith('govicenter');

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
            'Supplier_ID' => $this->Supplier_ID,
            'Mobile_No' => $this->Mobile_No,
            'Office_No' => $this->Office_No,
            'sup_otp' => $this->sup_otp,
            'Reg_Date' => $this->Reg_Date,
            'Seller_Stat' => $this->Seller_Stat,
        ]);

        $query->andFilterWhere(['like', 'Name', $this->Name])
            ->andFilterWhere(['like', 'Gender', $this->Gender])
            ->andFilterWhere(['like', 'Nic', $this->Nic])
            ->andFilterWhere(['like', 'Address', $this->Address])
            ->andFilterWhere(['like', 'sup_password', $this->sup_password])
            ->andFilterWhere(['like', 'Email', $this->Email])
            ->andFilterWhere(['like', 'sup_profile_Image_Id', $this->sup_profile_Image_Id])
            ->andFilterWhere(['like', 'districts.District_name', $this->sup_district])
            ->andFilterWhere(['like', 'agri_center.Name', $this->sup_govicenter]);

        return $dataProvider;
    }
}
