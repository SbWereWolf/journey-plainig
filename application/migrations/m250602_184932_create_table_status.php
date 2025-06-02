<?php

use yii\db\Migration;

class m250602_184932_create_table_status extends Migration
{
    private string $table = 'status';

    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable(
            $this->table,
            [
                'id' => $this->bigPrimaryKey()
                    ->comment('Числовой идентификатор'),
                'code' => $this->string()
                    ->comment('Символьный идентификатор'),
                'title' => $this->string()->comment('Название'),
                'description' => $this->string()->comment('Описание'),
            ]
        );

        $this->createIndex(
            'status_code_ux',
            $this->table,
            ['code'],
            true
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