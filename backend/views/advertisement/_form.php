<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertisement */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="advertisement-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Supplier_Id')->textInput() ?>

    <?= $form->field($model, 'Cat_Id')->textInput() ?>

    <?= $form->field($model, 'Sub_Cat_id')->textInput() ?>

    <?= $form->field($model, 'Type')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'Unit_Price')->textInput() ?>

    <?= $form->field($model, 'Quantity')->textInput() ?>

    <?= $form->field($model, 'Units')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'Selling_place')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'Expiration_date')->textInput() ?>

    <?= $form->field($model, 'Ad_Date')->textInput() ?>

    <?= $form->field($model, 'Adver_Status')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
