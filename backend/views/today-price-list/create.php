<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TodayPriceList */

$this->title = 'Create Today Price List';
$this->params['breadcrumbs'][] = ['label' => 'Today Price Lists', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="today-price-list-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
