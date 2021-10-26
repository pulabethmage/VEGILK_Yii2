<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AdvertisementImages */

$this->title = 'Create Advertisement Images';
$this->params['breadcrumbs'][] = ['label' => 'Advertisement Images', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertisement-images-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
