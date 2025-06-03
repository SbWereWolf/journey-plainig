<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\ServiceTimetableSlot $model */

$this->title = 'Create Service Timetable Slot';
$this->params['breadcrumbs'][] = ['label' => 'Service Timetable Slots', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="service-timetable-slot-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
