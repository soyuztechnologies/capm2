
using from './CatalogService';

annotate CatalogService.Students with @(

    UI:{
        Identification:[{Value: email}],
        SelectionFields: [email],
        LineItem: [
            {Value : email},
            {Value : first_name},
            {Value : last_name},
            {Value : date_sign_up}
        ],
        HeaderInfo:{
            TypeName: '{i18n>Course}',
            TypeNamePlural: '{i18n>Courses}',
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
