<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\DistrictsTamil */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="districts-tamil-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'District_name')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
