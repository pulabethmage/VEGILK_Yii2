<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AdvertisementImages */

$this->title = 'Update Advertisement Images: ' . $model->Img_Auto_ID;
$this->params['breadcrumbs'][] = ['label' => 'Advertisement Images', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Img_Auto_ID, 'url' => ['view', 'id' => $model->Img_Auto_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="advertisement-images-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
