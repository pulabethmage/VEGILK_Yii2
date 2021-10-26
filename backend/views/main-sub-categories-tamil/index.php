<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\MainSubCategoriesTamilSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Main Sub Categories Tamils';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="main-sub-categories-tamil-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Main Sub Categories Tamil', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           // 'sub_catid',
           [
            'attribute' => 'main_catid',
            'value' => 'maincat.main_cat_name',
        ],
            'sub_catname:ntext',
           // 'sub_catstockprice',
           // 'sub_catretailprice',
            'sub_cat_imageurl:ntext',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
