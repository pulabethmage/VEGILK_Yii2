<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\MainCategoriesTamil;

/* @var $this yii\web\View */
/* @var $model backend\models\MainSubCategoriesTamil */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="main-sub-categories-tamil-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model,'main_catid')->dropDownList(
        ArrayHelper::map(MainCategoriesTamil::find()->all(),'main_cat_id','main_cat_name'),
            ['prompt'=>'Select Main Category']) ?>

    <?= $form->field($model, 'sub_catname')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'sub_catstockprice')->textInput() ?>

    <?= $form->field($model, 'sub_catretailprice')->textInput() ?>

    <?= $form->field($model, 'sub_cat_imageurl')->textarea(['rows' => 6]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
