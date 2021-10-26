<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MainSubCategories */

$this->title = 'Create Main Sub Categories';
$this->params['breadcrumbs'][] = ['label' => 'Main Sub Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="main-sub-categories-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
