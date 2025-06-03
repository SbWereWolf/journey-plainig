<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Companion $model */

$this->title = 'Update Companion: ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Companions', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="companion-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
