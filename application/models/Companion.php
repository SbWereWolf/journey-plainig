<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "companion".
 *
 * @property int $id Номер
 * @property string|null $name Имя
 * @property string|null $description Описание
 */
class Companion extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'companion';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'description'], 'default', 'value' => null],
            [['name', 'description'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Номер',
            'name' => 'Имя',
            'description' => 'Описание',
        ];
    }

}
