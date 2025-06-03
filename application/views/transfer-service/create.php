<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\TransferService $model */

$this->title = 'Create Transfer Service';
$this->params['breadcrumbs'][] = ['label' => 'Transfer Services', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="transfer-service-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
