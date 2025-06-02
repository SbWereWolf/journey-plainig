<?php

use yii\db\Migration;

class m250602_180943_create_table_journey extends Migration
{
    private string $table = 'journey';

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable(
            $this->table,
            [
                'id' => $this->bigPrimaryKey()->comment('Номер'),
                'title' => $this->string()->comment('Название'),
                'description' => $this->string()->comment('Описание'),
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
