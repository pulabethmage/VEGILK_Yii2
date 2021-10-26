<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SupplierDetailSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="supplier-detail-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Supplier_ID') ?>

    <?= $form->field($model, 'Name') ?>

    <?= $form->field($model, 'Gender') ?>

    <?= $form->field($model, 'Nic') ?>

    <?= $form->field($model, 'Address') ?>

    <?php // echo $form->field($model, 'Mobile_No') ?>

    <?php // echo $form->field($model, 'Office_No') ?>

    <?php // echo $form->field($model, 'sup_district') ?>

    <?php // echo $form->field($model, 'sup_govicenter') ?>

    <?php // echo $form->field($model, 'sup_password') ?>

    <?php // echo $form->field($model, 'sup_otp') ?>

    <?php // echo $form->field($model, 'Reg_Date') ?>

    <?php // echo $form->field($model, 'Email') ?>

    <?php // echo $form->field($model, 'sup_profile_Image_Id') ?>

    <?php // echo $form->field($model, 'Seller_Stat') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
