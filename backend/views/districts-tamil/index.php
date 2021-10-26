<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\DistrictsTamilSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Districts Tamils';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="districts-tamil-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Districts Tamil', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'dis_auto_id',
            'District_name',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
