<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "journey".
 *
 * @property int $id Номер
 * @property string|null $title Название
 * @property string|null $description Описание
 */
class Journey extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'journey';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'description'], 'default', 'value' => null],
            [['title', 'description'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Номер',
            'title' => 'Название',
            'description' => 'Описание',
        ];
    }

}
