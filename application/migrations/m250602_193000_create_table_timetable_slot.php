<?php

use yii\db\Migration;

class m250602_193000_create_table_timetable_slot extends Migration
{
    private string $table = 'timetable_slot';

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable(
            $this->table,
            [
                'id' =>
                    $this->bigPrimaryKey()->comment('Идентификатор'),
                'title' => $this->string()->comment('Название'),
                'journey_id' =>
                    $this->bigInteger()->comment('Поездка'),
                'companion_id' =>
                    $this->bigInteger()->comment('Участник'),
                'date_start' => $this->date()->comment('Начало'),
                'date_finish' => $this->date()->comment('Окончание'),
            ]
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable($this->table);
    }
}