<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%view_time}}`.
 */
class m250602_235300_create_view_timetable extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->execute(<<<SQL
CREATE VIEW timetable
    AS
select
    j.title journey,
    c.name companion,
    coalesce(ts.title,hs.title,'нет услуги') service,
    tsl.date_start,
    tsl.date_finish
from service_timetable_slot sts
         join timetable_slot tsl on sts.timetable_slot_id = tsl.id
         left join transfer_service ts on sts.service_uuid = ts.uuid
         left join hotel_service hs on sts.service_uuid = hs.uuid
         join journey j on tsl.journey_id = j.id
         join companion c on tsl.companion_id = c.id
order by j.id,date_start,date_finish
SQL
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->execute('DROP VIEW timetable');
    }
}