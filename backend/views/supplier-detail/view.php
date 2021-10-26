<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\SupplierDetail */

$this->title = $model->Name;
$this->params['breadcrumbs'][] = ['label' => 'Supplier Details', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="supplier-detail-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->Supplier_ID], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->Supplier_ID], [
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
            'Supplier_ID',
            'Name',
            'Gender',
            'Nic',
            'Address',
            'Mobile_No',
            'Office_No',
            'sup_district',
            'sup_govicenter',
            'sup_password',
            'sup_otp',
            'Reg_Date',
            'Email:email',
            'sup_profile_Image_Id',
            'Seller_Stat',
        ],
    ]) ?>

</div>
