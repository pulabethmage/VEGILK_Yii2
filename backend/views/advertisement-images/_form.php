<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AdvertisementImages */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="advertisement-images-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Ad_Id')->textInput() ?>

    <?= $form->field($model, 'Image_ID')->textInput() ?>

    <?= $form->field($model, 'Image_Url')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
