<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SupplierDetail */

$this->title = 'Update Supplier Detail: ' . $model->Name;
$this->params['breadcrumbs'][] = ['label' => 'Supplier Details', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Name, 'url' => ['view', 'id' => $model->Supplier_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="supplier-detail-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
