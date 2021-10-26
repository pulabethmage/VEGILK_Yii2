<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\AgriCenterTamil */

$this->title = 'Create Agri Center Tamil';
$this->params['breadcrumbs'][] = ['label' => 'Agri Center Tamils', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="agri-center-tamil-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
