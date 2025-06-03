<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "timetable".
 *
 * @property string|null $journey
 * @property string|null $companion
 * @property string|null $service
 * @property string|null $date_start
 * @property string|null $date_finish
 */
class Timetable extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'timetable';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['journey', 'companion', 'service', 'date_start', 'date_finish'], 'default', 'value' => null],
            [['service'], 'string'],
            [['date_start', 'date_finish'], 'safe'],
            [['journey', 'companion'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'journey' => 'Journey',
            'companion' => 'Companion',
            'service' => 'Service',
            'date_start' => 'Date Start',
            'date_finish' => 'Date Finish',
        ];
    }

}
