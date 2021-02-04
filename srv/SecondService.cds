using anubhav.db as db from '../db/dbtable';
service SecondService{
    @readonly
    entity DemoInfo as projection on db.Demos excluding{
        createdAt,
        createdBy,
        modifiedAt,
        modifiedBy,
        booked_seats,
        course
    };
}