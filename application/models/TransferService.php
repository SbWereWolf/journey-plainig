<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "transfer_service".
 *
 * @property int $id Номер
 * @property string|null $uuid Уникальный идентификатор
 * @property int|null $status_id Статус
 * @property string|null $title Название
 * @property string|null $description Описание
 * @property string|null $seat_number Номер места
 *
 * @property Status $status
 */
class TransferService extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transfer_service';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['status_id', 'title', 'description', 'seat_number'], 'default', 'value' => null],
            [['uuid'], 'default', 'value' => 'gen_random_uuid()'],
            [['status_id'], 'default', 'value' => null],
            [['status_id'], 'integer'],
            [['uuid', 'title', 'description', 'seat_number'], 'string', 'max' => 255],
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
            'seat_number' => 'Номер места',
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
