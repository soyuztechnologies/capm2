using anubhav.db as db from '../db/dbtable';

service CatalogService @(impl : 'srv/cat-service.js') {
   entity Students as projection on db.Students;
   entity Courses as projection on db.Courses;
   @Insertable entity Demos as projection on db.Demos;
}

//crud capability
annotate CatalogService.Students with @odata.draft.enabled;
