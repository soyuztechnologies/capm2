
using from './CatalogService';

annotate CatalogService.Students with @(

    UI:{
        Identification:[
            {Value : email,Label : '{i18n>id}'},
            {Value : first_name,Label : '{i18n>firstname}'},
            {Value : last_name,Label : '{i18n>lastname}'}
        ],
        Facets  : [
            {
                Label : 'Details', 
                $Type : 'UI.ReferenceFacet', 
                ID: 'first_name', 
                Target: '@UI.Identification'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Label: 'Course Details',
                Target: 'courses/@UI.FieldGroup#CourseDetails'
            }
        ],
        SelectionFields: [email],
        LineItem: [
            {Value : email},
            {Value : first_name},
            {Value : last_name},
            {Value : date_sign_up}
        ],
        HeaderInfo:{
            TypeName: 'Student',
            TypeNamePlural: 'Students',
            Title: {Value : first_name},
            Description : {Value:first_name}
        }

    }


);

annotate CatalogService.Students with {
    email @title:'{i18n>id}';
    first_name @title:'{i18n>firstname}';
    last_name @title:'{i18n>lastname}';
    date_sign_up @title:'{i18n>signup}';
}

annotate CatalogService.Courses with @(
UI:{
        FieldGroup#CourseDetails: {

            Data:[
                {
                    Label: 'Course Name',
                    Value: course_name
                },
                 {
                    Label: 'Method',
                    Value: method
                },
                {
                    Label: 'Start Date',
                    Value: start_date
                },
                {
                    Label: 'End Date',
                    Value: end_date
                }
            ]
        }

});