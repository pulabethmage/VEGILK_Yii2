<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AdvertisementImagesSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Advertisement Images';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertisement-images-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Advertisement Images', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'Img_Auto_ID',
            'Ad_Id',
            'Image_ID',
            'Image_Url:url',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
