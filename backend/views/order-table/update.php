<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\OrderTable */

$this->title = 'Update Order Table: ' . $model->Order_ID;
$this->params['breadcrumbs'][] = ['label' => 'Order Tables', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Order_ID, 'url' => ['view', 'id' => $model->Order_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="order-table-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
