<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "service_timetable_slot".
 *
 * @property int $id Идентификатор
 * @property string|null $title Название
 * @property int|null $timetable_slot_id Слот времени в расписании
 * @property string|null $service_uuid Уникальный идентификатор услуги
 *
 * @property TimetableSlot $timetableSlot
 */
class ServiceTimetableSlot extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'service_timetable_slot';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'timetable_slot_id', 'service_uuid'], 'default', 'value' => null],
            [['timetable_slot_id'], 'default', 'value' => null],
            [['timetable_slot_id'], 'integer'],
            [['title', 'service_uuid'], 'string', 'max' => 255],
            [['timetable_slot_id'], 'unique'],
            [['timetable_slot_id'], 'exist', 'skipOnError' => true, 'targetClass' => TimetableSlot::class, 'targetAttribute' => ['timetable_slot_id' => 'id']],
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
            'timetable_slot_id' => 'Слот времени в расписании',
            'service_uuid' => 'Уникальный идентификатор услуги',
        ];
    }

    /**
     * Gets query for [[TimetableSlot]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getTimetableSlot()
    {
        return $this->hasOne(TimetableSlot::class, ['id' => 'timetable_slot_id']);
    }

}
