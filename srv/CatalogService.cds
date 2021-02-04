using anubhav.db as db from '../db/dbtable';

service  first{
   @readonly entity Students as projection on db.Students;
   @Capabilities : { Insertable: true, Updatable: true, Deletable: true }
   entity Courses as projection on db.Courses;
   @Insertable entity Demos as projection on db.Demos;
}