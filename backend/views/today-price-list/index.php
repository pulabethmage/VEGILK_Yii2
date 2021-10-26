<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TodayPriceListSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Today Price Lists';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="today-price-list-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Today Price List', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           // 'price_list_id',
           [
            'attribute' => 'economic_center_id',
            'value' => 'economiccenter.economic_center_name',
            ],
            [
                'attribute' => 'main_cat_id',
                'value' => 'maincat.main_cat_name',
            ],
            [
                'attribute' => 'sub_cat_id',
                'value' => 'subcat.sub_catname',
            ],
            'stock_price',
            'retail_price',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
