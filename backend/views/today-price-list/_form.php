<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use backend\models\EconomicCenters;
use backend\models\MainCategories;
use backend\models\MainSubCategories;

/* @var $this yii\web\View */
/* @var $model backend\models\TodayPriceList */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="today-price-list-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model,'economic_center_id')->dropDownList(
        ArrayHelper::map(EconomicCenters::find()->all(),'economic_center_id','economic_center_name'),
            ['prompt'=>'Select Economic Center']) ?>

    <?= $form->field($model,'main_cat_id')->dropDownList(
        ArrayHelper::map(MainCategories::find()->all(),'main_cat_id','main_cat_name'),
            [
                'prompt'=>'Select Main Category',
                'onchange'=>'$.post("index.php?r=main-sub-categories/lists&id='.'"+$(this).val(),function(data){
                    $("select#todaypricelist-sub_cat_id").html(data);
                });'
            
            ]) ?>


    <?= $form->field($model,'sub_cat_id')->dropDownList(
        ArrayHelper::map(MainSubCategories::find()->all(),'sub_catid','sub_catname'),
            ['prompt'=>'Select Sub Category']) ?>

    <?= $form->field($model, 'stock_price')->textInput() ?>

    <?= $form->field($model, 'retail_price')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
