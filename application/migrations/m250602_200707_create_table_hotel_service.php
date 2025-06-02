<?php

use yii\db\Migration;

class m250602_200707_create_table_hotel_service extends Migration
{
    private string $table = 'hotel_service';

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable(
            $this->table,
            [
                'id' => $this->bigPrimaryKey()->comment('Номер'),
                'uuid' => $this->string()
                    ->comment('Уникальный идентификатор'),
                'status_id' => $this->bigInteger()->comment('Статус'),
                'title' => $this->string()->comment('Название'),
                'description' => $this->string()->comment('Описание'),
                'address' => $this->string()->comment('Адрес'),
                'room_number' =>
                    $this->string()->comment('Номер номера'),
            ]
        );

        $this->execute(<<<SQL
alter table $this->table 
    alter column uuid set default gen_random_uuid()::character varying
SQL
        );

        $this->addForeignKey(
            'hotel_service_status_id_fk',
            $this->table,
            ['status_id'],
            'status',
            ['id'],
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