<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TodayPriceList */

$this->title = 'Update Today Price List: ' . $model->price_list_id;
$this->params['breadcrumbs'][] = ['label' => 'Today Price Lists', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->price_list_id, 'url' => ['view', 'id' => $model->price_list_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="today-price-list-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
