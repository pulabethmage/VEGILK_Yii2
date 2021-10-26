<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Catergaries */

$this->title = 'Create Catergaries';
$this->params['breadcrumbs'][] = ['label' => 'Catergaries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="catergaries-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
