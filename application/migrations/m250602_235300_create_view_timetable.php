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
        $this->execute(
            <<<SQL
CREATE VIEW timetable
    AS
select
    j.title journey,
    c.name companion,
    coalesce(transfer.title,hotel.title,'нет услуги') service,
    slot.date_start,
    slot.date_finish
from service_timetable_slot service
         join timetable_slot slot 
             on service.timetable_slot_id = slot.id
         left join transfer_service transfer 
             on service.service_uuid = transfer.uuid
         left join hotel_service hotel 
             on service.service_uuid = hotel.uuid
         join journey j on slot.journey_id = j.id
         join companion c on slot.companion_id = c.id
order by slot.journey_id,date_start,date_finish, slot.companion_id
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