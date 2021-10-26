<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertisement */

$this->title = $model->Ad_Id;
$this->params['breadcrumbs'][] = ['label' => 'Advertisements', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="advertisement-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->Ad_Id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->Ad_Id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'Ad_Id',
            'Supplier_Id',
            'Cat_Id',
            'Sub_Cat_id',
            'Type:ntext',
            'Unit_Price',
            'Quantity',
            'Units:ntext',
            'Selling_place:ntext',
            'Expiration_date',
            'Ad_Date',
            'Adver_Status',
        ],
    ]) ?>

</div>
