<?php

/** @var yii\web\View $this */

use yii\helpers\Url;

$this->title = 'Расписание поездок';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Расписания поездок</h1>
    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-2">
                <h2>Journey</h2>
                <p>Поездки</p>
                <p><a
                            class="btn btn-default"
                            href="<?= Url::to(['journey/index']); ?>">
                        Работать с Поездками
                    </a></p>
            </div>
            <div class="col-lg-2">
                <h2>Companion</h2>
                <p>Участники поездок</p>
                <p><a
                            class="btn btn-default"
                            href="<?= Url::to(['companion/index']); ?>">
                        Работать с Участниками поездок
                    </a></p>
            </div>
            <div class="col-lg-2">
                <h2>Timetable Slot</h2>
                <p>Пункты в расписании</p>
                <p><a
                            class="btn btn-default"
                            href="<?= Url::to(['timetable-slot/index']); ?>">
                        Работать с Пунктами в расписании
                    </a></p>
            </div>
            <div class="col-lg-2">
                <h2>Transfer Service</h2>
                <p>Перемещения из точки А в точку Б</p>
                <p><a
                            class="btn btn-default"
                            href="<?= Url::to(['transfer-service/index']); ?>">
                        Работать с Перемещениями
                    </a></p>
            </div>
            <div class="col-lg-2">
                <h2>Hotel Service</h2>
                <p>Размещения для проживания</p>
                <p><a
                            class="btn btn-default"
                            href="<?= Url::to(['hotel-service/index']); ?>">
                        Работать с Проживаниями
                    </a></p>
            </div>
            <div class="col-lg-2">
                <h2>Service Timetable Slot</h2>
                <p>Занятость в соответствии с пунктами расписания</p>
                <p><a
                            class="btn btn-default"
                            href="<?= Url::to(['service-timetable-slot/index']); ?>">
                        Работать с Занятостью по расписанию
                    </a></p>
            </div>
        </div>

    </div>
</div>
