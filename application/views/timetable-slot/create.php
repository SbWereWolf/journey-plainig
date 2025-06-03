<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\TimetableSlot $model */

$this->title = 'Create Timetable Slot';
$this->params['breadcrumbs'][] = ['label' => 'Timetable Slots', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="timetable-slot-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
