<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\MainCategories;

/* @var $this yii\web\View */
/* @var $model backend\models\MainSubCategories */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="main-sub-categories-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?= $form->field($model,'main_catid')->dropDownList(
        ArrayHelper::map(MainCategories::find()->all(),'main_cat_id','main_cat_name'),
            ['prompt'=>'Select Main Category']) ?>

    <?= $form->field($model, 'sub_catname')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'sub_catstockprice')->textInput() ?>

    <?= $form->field($model, 'sub_catretailprice')->textInput() ?>

    <?= $form->field($model, 'subcatimageurlfile')->fileInput(); ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
