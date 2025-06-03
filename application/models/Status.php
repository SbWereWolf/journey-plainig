<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "status".
 *
 * @property int $id Числовой идентификатор
 * @property string|null $code Символьный идентификатор
 * @property string|null $title Название
 * @property string|null $description Описание
 *
 * @property HotelService[] $hotelServices
 * @property TransferService[] $transferServices
 */
class Status extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'status';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['code', 'title', 'description'], 'default', 'value' => null],
            [['code', 'title', 'description'], 'string', 'max' => 255],
            [['code'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Числовой идентификатор',
            'code' => 'Символьный идентификатор',
            'title' => 'Название',
            'description' => 'Описание',
        ];
    }

    /**
     * Gets query for [[HotelServices]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getHotelServices()
    {
        return $this->hasMany(HotelService::class, ['status_id' => 'id']);
    }

    /**
     * Gets query for [[TransferServices]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTransferServices()
    {
        return $this->hasMany(TransferService::class, ['status_id' => 'id']);
    }

}
