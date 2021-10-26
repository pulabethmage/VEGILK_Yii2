<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertisement */

$this->title = 'Update Advertisement: ' . $model->Ad_Id;
$this->params['breadcrumbs'][] = ['label' => 'Advertisements', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Ad_Id, 'url' => ['view', 'id' => $model->Ad_Id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="advertisement-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
