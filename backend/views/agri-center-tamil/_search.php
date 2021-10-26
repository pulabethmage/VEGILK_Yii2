<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\AgriCenterTamilSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="agri-center-tamil-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'Center_ID') ?>

    <?= $form->field($model, 'Name') ?>

    <?= $form->field($model, 'District_id') ?>

    <?= $form->field($model, 'Contact_No') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
