<?php

use yii\db\Migration;

class m250602_194000_create_table_service_timetable_slot extends Migration
{
    private string $table = 'service_timetable_slot';

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
                'timetable_slot_id' => $this->bigInteger()
                    ->comment('Слот времени в расписании'),
                'service_uuid' => $this->string()
                    ->comment('Уникальный идентификатор услуги'),
            ]
        );

        $this->addForeignKey(
            $this->table . '_timetable_slot_id',
            $this->table,
            ['timetable_slot_id'],
            'timetable_slot',
            ['id'],
        );

        $this->createIndex(
            $this->table.'_timetable_slot_id_ux',
            $this->table,
            ['timetable_slot_id'],
            true,
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