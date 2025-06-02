<?php

use yii\db\Migration;

class m250602_195914_create_table_transfer_service extends Migration
{
    private string $table = 'transfer_service';

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable(
            $this->table,
            [
                'id' => $this->bigPrimaryKey()->comment('Номер'),
                'status_id' => $this->bigInteger()->comment('Статус'),
                'title' => $this->string()->comment('Название'),
                'description' => $this->string()->comment('Описание'),
                'seat_number' =>
                    $this->string()->comment('Номер места'),
            ]
        );

        $this->addForeignKey(
            $this->table . '_status_id_fk',
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