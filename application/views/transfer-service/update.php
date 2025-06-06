<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\TransferService $model */

$this->title = 'Update Transfer Service: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Transfer Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="transfer-service-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
