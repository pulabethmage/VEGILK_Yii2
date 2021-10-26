<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\Districts;
use backend\models\AgriCenter;


/* @var $this yii\web\View */
/* @var $model backend\models\SupplierDetail */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="supplier-detail-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'Name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Gender')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Nic')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Address')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Mobile_No')->textInput() ?>

    <?= $form->field($model, 'Office_No')->textInput() ?>


    <?= $form->field($model,'sup_district')->dropDownList(
        ArrayHelper::map(Districts::find()->all(),'dis_auto_id','District_name'),
            [
                'prompt'=>'Select District',
                'onchange'=>'$.post("index.php?r=agri-center/lists&id='.'"+$(this).val(),function(data){
                    $("select#supplierdetail-sup_govicenter").html(data);
                });'
            
            ]) ?>

    <?= $form->field($model,'sup_govicenter')->dropDownList(
        ArrayHelper::map(AgriCenter::find()->all(),'Center_ID','Name'),
            [
                'prompt'=>'Select Govi Center',
            
            ]) ?>

    <?= $form->field($model, 'sup_password')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sup_otp')->textInput() ?>

    <?= $form->field($model, 'Reg_Date')->textInput() ?>

    <?= $form->field($model, 'Email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sup_profile_Image_Id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'Seller_Stat')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
