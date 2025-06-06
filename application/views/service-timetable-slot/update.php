<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\ServiceTimetableSlot $model */

$this->title = 'Update Service Timetable Slot: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Service Timetable Slots', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="service-timetable-slot-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
