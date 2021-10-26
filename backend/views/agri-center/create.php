<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AgriCenter */

$this->title = 'Create Agri Center';
$this->params['breadcrumbs'][] = ['label' => 'Agri Centers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agri-center-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
