<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Journey $model */

$this->title = 'Update Journey: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Journeys', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="journey-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
