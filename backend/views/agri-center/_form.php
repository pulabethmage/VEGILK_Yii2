<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\Districts;

/* @var $this yii\web\View */
/* @var $model backend\models\AgriCenter */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="agri-center-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Name')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model,'District_id')->dropDownList(
        ArrayHelper::map(Districts::find()->all(),'dis_auto_id','District_name'),
            ['prompt'=>'Select District']) ?>

    <?= $form->field($model, 'Contact_No')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
