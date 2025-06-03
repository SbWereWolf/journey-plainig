<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\TimetableSlot $model */

$this->title = 'Update Timetable Slot: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Timetable Slots', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="timetable-slot-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
