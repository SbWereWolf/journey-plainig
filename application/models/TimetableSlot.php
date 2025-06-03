<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "timetable_slot".
 *
 * @property int $id Идентификатор
 * @property string|null $title Название
 * @property int|null $journey_id Поездка
 * @property int|null $companion_id Участник
 * @property string|null $date_start Начало
 * @property string|null $date_finish Окончание
 *
 * @property ServiceTimetableSlot $serviceTimetableSlot
 */
class TimetableSlot extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'timetable_slot';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'journey_id', 'companion_id', 'date_start', 'date_finish'], 'default', 'value' => null],
            [['journey_id', 'companion_id'], 'default', 'value' => null],
            [['journey_id', 'companion_id'], 'integer'],
            [['date_start', 'date_finish'], 'safe'],
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Идентификатор',
            'title' => 'Название',
            'journey_id' => 'Поездка',
            'companion_id' => 'Участник',
            'date_start' => 'Начало',
            'date_finish' => 'Окончание',
        ];
    }

    /**
     * Gets query for [[ServiceTimetableSlot]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getServiceTimetableSlot()
    {
        return $this->hasOne(ServiceTimetableSlot::class, ['timetable_slot_id' => 'id']);
    }

}
