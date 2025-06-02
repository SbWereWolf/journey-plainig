<?php

use yii\db\Migration;

class m250602_182823_create_table_companion extends Migration
{
    private string $table = 'companion';

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable(
            $this->table,
            [
                'id' => $this->bigPrimaryKey()->comment('Номер'),
                'name' => $this->string()->comment('Имя'),
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