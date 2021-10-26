<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\BuyerDetailSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Buyer Details';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="buyer-detail-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Buyer Detail', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Buyer_ID',
            'Name',
            'Gender',
            'Nic',
            'Mobile_No',
            //'Office_No',
            //'Address',
            //'Email:email',
            //'Reg_Date',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
