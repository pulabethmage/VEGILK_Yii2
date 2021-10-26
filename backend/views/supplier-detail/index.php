<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\SupplierDetailSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Supplier Details';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="supplier-detail-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Supplier Detail', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Supplier_ID',
            'Name',
            'Gender',
            'Nic',
            'Address',
            'Mobile_No',
            'Office_No',
            [
                'attribute' => 'sup_district',
                'value' => 'district.District_name',
            ],
            [
                'attribute' => 'sup_govicenter',
                'value' => 'govicenter.Name',
            ],
            'sup_password',
            'Reg_Date',
            'Seller_Stat',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
