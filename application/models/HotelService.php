<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "hotel_service".
 *
 * @property int $id Номер
 * @property string|null $uuid Уникальный идентификатор
 * @property int|null $status_id Статус
 * @property string|null $title Название
 * @property string|null $description Описание
 * @property string|null $address Адрес
 * @property string|null $room_number Номер номера
 *
 * @property Status $status
 */
class HotelService extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'hotel_service';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['status_id', 'title', 'description', 'address', 'room_number'], 'default', 'value' => null],
            [['uuid'], 'default', 'value' => 'gen_random_uuid()'],
            [['status_id'], 'default', 'value' => null],
            [['status_id'], 'integer'],
            [['uuid', 'title', 'description', 'address', 'room_number'], 'string', 'max' => 255],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::class, 'targetAttribute' => ['status_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Номер',
            'uuid' => 'Уникальный идентификатор',
            'status_id' => 'Статус',
            'title' => 'Название',
            'description' => 'Описание',
            'address' => 'Адрес',
            'room_number' => 'Номер номера',
        ];
    }

    /**
     * Gets query for [[Status]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getStatus()
    {
        return $this->hasOne(Status::class, ['id' => 'status_id']);
    }

}
