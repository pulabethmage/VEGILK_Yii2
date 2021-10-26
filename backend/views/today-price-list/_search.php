<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\TodayPriceListSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="today-price-list-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'price_list_id') ?>

    <?= $form->field($model, 'economic_center_id') ?>

    <?= $form->field($model, 'main_cat_id') ?>

    <?= $form->field($model, 'sub_cat_id') ?>

    <?= $form->field($model, 'stock_price') ?>

    <?php // echo $form->field($model, 'retail_price') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
