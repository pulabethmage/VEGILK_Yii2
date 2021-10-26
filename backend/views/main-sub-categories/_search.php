<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\MainSubCategoriesSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="main-sub-categories-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'sub_catid') ?>

    <?= $form->field($model, 'main_catid') ?>

    <?= $form->field($model, 'sub_catname') ?>

    <?= $form->field($model, 'sub_catstockprice') ?>

    <?= $form->field($model, 'sub_catretailprice') ?>

    <?php // echo $form->field($model, 'sub_cat_imageurl') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
