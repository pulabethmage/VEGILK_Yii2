<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DistrictsTamil */

$this->title = 'Update Districts Tamil: ' . $model->dis_auto_id;
$this->params['breadcrumbs'][] = ['label' => 'Districts Tamils', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->dis_auto_id, 'url' => ['view', 'id' => $model->dis_auto_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="districts-tamil-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
