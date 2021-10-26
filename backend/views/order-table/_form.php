<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\OrderTable */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="order-table-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Ad_Id')->textInput() ?>

    <?= $form->field($model, 'Buyer_Id')->textInput() ?>

    <?= $form->field($model, 'Quantity')->textInput() ?>

    <?= $form->field($model, 'Status_Id')->textInput() ?>

    <?= $form->field($model, 'Remark')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Order_Date')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
