<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\BuyerDetail */

$this->title = 'Update Buyer Detail: ' . $model->Name;
$this->params['breadcrumbs'][] = ['label' => 'Buyer Details', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Name, 'url' => ['view', 'id' => $model->Buyer_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="buyer-detail-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
