<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MainCategories */

$this->title = 'Update Main Categories: ' . $model->main_cat_id;
$this->params['breadcrumbs'][] = ['label' => 'Main Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->main_cat_id, 'url' => ['view', 'id' => $model->main_cat_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="main-categories-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
