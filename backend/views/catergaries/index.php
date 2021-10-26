<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\CatergariesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Catergaries';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="catergaries-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Catergaries', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Cat_Id',
            'Cat_Desc',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
