<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\OrderTableSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="order-table-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Order_ID') ?>

    <?= $form->field($model, 'Ad_Id') ?>

    <?= $form->field($model, 'Buyer_Id') ?>

    <?= $form->field($model, 'Quantity') ?>

    <?= $form->field($model, 'Status_Id') ?>

    <?php // echo $form->field($model, 'Remark') ?>

    <?php // echo $form->field($model, 'Order_Date') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
