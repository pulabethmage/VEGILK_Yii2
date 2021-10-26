<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Catergaries */

$this->title = 'Update Catergaries: ' . $model->Cat_Id;
$this->params['breadcrumbs'][] = ['label' => 'Catergaries', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Cat_Id, 'url' => ['view', 'id' => $model->Cat_Id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="catergaries-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
