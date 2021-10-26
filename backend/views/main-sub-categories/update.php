<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MainSubCategories */

$this->title = 'Update Main Sub Categories: ' . $model->sub_catid;
$this->params['breadcrumbs'][] = ['label' => 'Main Sub Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->sub_catid, 'url' => ['view', 'id' => $model->sub_catid]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="main-sub-categories-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
