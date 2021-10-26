<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\DistrictsTamil */

$this->title = 'Create Districts Tamil';
$this->params['breadcrumbs'][] = ['label' => 'Districts Tamils', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="districts-tamil-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
