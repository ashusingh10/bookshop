using from './catalog-service';

annotate CatalogService.Books with @odata.draft.enabled;
annotate CatalogService.Books with @( 
UI:{
     Identification: [{Value: title}],
    
     SelectionFields: [title,author.name,author_ID],
    LineItem:[
        {Value: ID},
        {Value: title},
       {Value: author.name},
        {Value: author_ID},
        {Value: stock}
 
         //{$Type: 'UI.DataField',Value: ID, Label: '{i18n>ID}'},
        // {$Type: 'UI.DataField',Value: title, Label: '{i18n>Book Title}'},
        // {$Type: 'UI.DataField',Value: author.name, Label: '{i18n>Author Name}'},
        // {$Type: 'UI.DataField',Value: author_ID, Label: '{i18n>Author ID}'},
        // {$Type: 'UI.DataField',Value: stock,Label: '{i18n>Book Stock}'}
 
    ],
    HeaderInfo:{
        TypeName: '{i18n>Books}',
        TypeNamePlural: '{i18n>Books}',
        Title: {Value: ID},
        Description: {Value: title}
        //Description: {Value: author.name}
    },
 
     Facets: [
            {$Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.FieldGroup#General'},
            {$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}',Target: '@UI.FieldGroup#Details'},
        ],
        FieldGroup#General: {
            Data: [
                //{Value: ID, Label:'{i18n>Book ID}'},
                {Value: title},
                {Value: author_ID,Label:'{i18n>Author ID}'},
              //{Value: author.name,Label:'{i18n>Author Name}'},   
                 {Value: author.name,Label:'{i18n>Author Name}'},
 
                
            ]
        },
        FieldGroup#Details: {
            Data: [
                {Value: stock,Label:'{i18n>Book Stock}'},
            ]
        },
},
    
 
);
// {
//     author @ValueList.entity:'Authors';
// };

annotate CatalogService.Books with {
    author @(Common : {
        FieldControl : #Mandatory,
        ValueList    : {
            CollectionPath  : 'Authors',
            Label           : 'Authors',
            SearchSupported : true,
            Parameters      : [
                {
                    $Type             : 'Common.ValueListParameterOut',
                    LocalDataProperty : 'author_ID',
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'name'
                },
            ]
        }
    });
}

annotate CatalogService.Books with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter @Core.Computed;
    title @title:'{i18n>Title}';
    author @title:'{i18n>AuthorID}';
    stock @title:'{i18n>Stock}';
}
 
annotate CatalogService.Authors with {
    ID @title:'{i18n>ID}' @UI.HiddenFilter @Core.Computed;
    name @title:'{i18n>AuthorName}';
 } 





///////////////////////////////////////////////////////////////////////////////////////    
// UI:{
//     Identification: [{Value: title}],
//     SelectionFields: [title, author.name],
//     LineItem:[
//         {Value: ID},
//         {Value: title},
//         {Value: author.name},
//        // {Value: author_ID},
//         {Value: stock}
//     ],
    
//     HeaderInfo:{
//         TypeName: '{i18n>Books}',
//         TypeNamePlural: '{i18n>Books}',
//         Title: {Value: title},
//         Description: {Value: author.name}
//     }
    
//     }
// );
// // {
// //    @ValueList.entity:'Authors',
// // };
 
// annotate CatalogService.Books with {
//     ID @title:'{i18n>ID}' @UI.HiddenFilter @Core.Computed;
//     title @title:'{i18n>Title}';
//     author @title:'{i18n>AuthorID}';
//     stock @title:'{i18n>Stock}';
// }
 
// annotate CatalogService.Authors with {
//     ID @title:'{i18n>ID}' @UI.HiddenFilter @Core.Computed;
//     name @title:'{i18n>AuthorName}';
//  } 




/////////////////Authors////////////////////////////////////

// annotate CatalogService.Authors with @odata.draft.enabled;
// annotate CatalogService.Authors with @(
// UI:{
//     Identification: [{Value: ID}],
//     SelectionFields: [ID, name],
//     LineItem:[
//         {Value: ID},
//         {Value: name},
      
//     ],

//      Facets: [
//             {$Type: 'UI.ReferenceFacet', Label: '{i18n>General}', Target: '@UI.FieldGroup#General'},
//         ],
//         FieldGroup#General: {
//             Data: [
//                 {Value: ID, Label:'{i18n>Book ID}'},
//                 {Value: name},
                
//             ]
//         },
    
    
//     HeaderInfo:{
//         TypeName: '{i18n>Authors}',
//         TypeNamePlural: '{i18n>Authors}',
//         Title: {Value:name},
//         Description: {Value:ID}
//     }
    
//     }
// );

// // annotate CatalogService.Authors with {
// //     ID @title:'{i18n>ID}' @UI.HiddenFilter @Core.Computed;
// //     name @title:'{i18n>AuthorName}';
// //  } 