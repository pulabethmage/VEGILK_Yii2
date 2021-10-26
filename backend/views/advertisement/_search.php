<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AdvertisementSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="advertisement-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Ad_Id') ?>

    <?= $form->field($model, 'Supplier_Id') ?>

    <?= $form->field($model, 'Cat_Id') ?>

    <?= $form->field($model, 'Sub_Cat_id') ?>

    <?= $form->field($model, 'Type') ?>

    <?php // echo $form->field($model, 'Unit_Price') ?>

    <?php // echo $form->field($model, 'Quantity') ?>

    <?php // echo $form->field($model, 'Units') ?>

    <?php // echo $form->field($model, 'Selling_place') ?>

    <?php // echo $form->field($model, 'Expiration_date') ?>

    <?php // echo $form->field($model, 'Ad_Date') ?>

    <?php // echo $form->field($model, 'Adver_Status') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
