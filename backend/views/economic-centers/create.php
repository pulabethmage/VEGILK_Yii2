<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\EconomicCenters */

$this->title = 'Create Economic Centers';
$this->params['breadcrumbs'][] = ['label' => 'Economic Centers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="economic-centers-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
