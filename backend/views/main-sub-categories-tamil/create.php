<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MainSubCategoriesTamil */

$this->title = 'Create Main Sub Categories Tamil';
$this->params['breadcrumbs'][] = ['label' => 'Main Sub Categories Tamils', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="main-sub-categories-tamil-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
