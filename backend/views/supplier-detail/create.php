<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\SupplierDetail */

$this->title = 'Create Supplier Detail';
$this->params['breadcrumbs'][] = ['label' => 'Supplier Details', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="supplier-detail-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
