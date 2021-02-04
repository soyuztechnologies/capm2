const cds = require('@sap/cds')
module.exports = srv => {

  console.log(`service name ${srv.name}`);

  srv.after('READ','Courses', (records) => {
 
    ///console.log(records);
    const newRecords = [];
    records.forEach(element => {
        if(element.method === "Online"){
            element.course_name = "[filenew]" + element.course_name;
        }
        newRecords.push(JSON.parse(JSON.stringify(element)));
    });
    console.log(newRecords);
    return newRecords;

  });
}