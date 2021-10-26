<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\OrderStatus */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="order-status-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Status_Desc')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
