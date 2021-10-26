<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\EconomicCenters */

$this->title = 'Update Economic Centers: ' . $model->economic_center_id;
$this->params['breadcrumbs'][] = ['label' => 'Economic Centers', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->economic_center_id, 'url' => ['view', 'id' => $model->economic_center_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="economic-centers-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
