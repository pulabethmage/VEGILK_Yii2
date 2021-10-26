<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AdvertisementSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Advertisements';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertisement-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Advertisement', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Ad_Id',
            'Supplier_Id',
            [
                'attribute' => 'Cat_Id',
                'value' => 'maincat.main_cat_name',
            ],
            [
                'attribute' => 'Sub_Cat_id',
                'value' => 'subcat.sub_catname',
            ],
            'Type:ntext',
            'Unit_Price',
            'Quantity',
            'Units:ntext',
            'Selling_place:ntext',
            'Expiration_date',
            'Ad_Date',
            'Adver_Status',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
