<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\MainCategoriesTamil */

$this->title = 'Create Main Categories Tamil';
$this->params['breadcrumbs'][] = ['label' => 'Main Categories Tamils', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="main-categories-tamil-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
