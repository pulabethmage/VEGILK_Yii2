<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\BuyerDetailSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="buyer-detail-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Buyer_ID') ?>

    <?= $form->field($model, 'Name') ?>

    <?= $form->field($model, 'Gender') ?>

    <?= $form->field($model, 'Nic') ?>

    <?= $form->field($model, 'Mobile_No') ?>

    <?php // echo $form->field($model, 'Office_No') ?>

    <?php // echo $form->field($model, 'Address') ?>

    <?php // echo $form->field($model, 'Email') ?>

    <?php // echo $form->field($model, 'Reg_Date') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
