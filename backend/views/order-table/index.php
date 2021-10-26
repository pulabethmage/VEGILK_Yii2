<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\OrderTableSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Order Tables';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-table-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Order Table', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Order_ID',
            'Ad_Id',
            'Buyer_Id',
            'Quantity',
            'Status_Id',
            //'Remark',
            //'Order_Date',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
