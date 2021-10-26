<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AdvertisementImagesSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="advertisement-images-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Img_Auto_ID') ?>

    <?= $form->field($model, 'Ad_Id') ?>

    <?= $form->field($model, 'Image_ID') ?>

    <?= $form->field($model, 'Image_Url') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
