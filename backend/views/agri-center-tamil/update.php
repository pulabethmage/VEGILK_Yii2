<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AgriCenterTamil */

$this->title = 'Update Agri Center Tamil: ' . $model->Name;
$this->params['breadcrumbs'][] = ['label' => 'Agri Center Tamils', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->Name, 'url' => ['view', 'id' => $model->Center_ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="agri-center-tamil-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
