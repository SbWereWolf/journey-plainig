<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\HotelService $model */

$this->title = 'Create Hotel Service';
$this->params['breadcrumbs'][] = ['label' => 'Hotel Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hotel-service-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
