using CatalogService as service from '../../srv/schema';
annotate service.Books with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Value : Author_ID,
                Label : '{i18n>Author}',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Genre',
                Value : Genre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PageCount',
                Value : PageCount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Publisher',
                Value : Publisher,
            },
            {
                $Type : 'UI.DataField',
                Value : Language_code,
                Label : '{i18n>Language}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Author Details',
            ID : 'AuthorDetails',
            Target : '@UI.Identification',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Value : Author_ID,
            Label : '{i18n>Author}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Language}',
            Value : Language_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : Genre,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>PageCount}',
            Value : PageCount,
        },
    ],
);

annotate service.Books with {
    Author @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Authors',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Author_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'DateOfBirth',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Nationality',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Biography',
            },
        ],
    }
};

annotate service.Authors with {
    ID @Common.Text : {
            $value : Name,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Books with {
    Author @Common.Text : {
        $value : Author.Name,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
annotate service.Books with {
    Author @Common.ValueListWithFixedValues : true
};
annotate service.Books with {
    Language @Common.Text : {
            $value : Language.name,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Books with @(
    UI.SelectionFields : [
        Author_ID,
        Language_code,
        Rating,
    ]
);
annotate service.Books with {
    Author @Common.Label : '{i18n>Author}'
};
annotate service.Books with {
    Language @Common.Label : '{i18n>Language}'
};
annotate service.Books with {
    Rating @Common.Label : 'Rating'
};
annotate service.Books with @(
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : Author.Name,
            Label : 'Name',
        },{
            $Type : 'UI.DataField',
            Value : Author.Nationality,
            Label : 'Nationality',
        },{
            $Type : 'UI.DataField',
            Value : Author.Website,
            Label : 'Website',
        },{
            $Type : 'UI.DataField',
            Value : Author.DateOfBirth,
            Label : 'DateOfBirth',
        },{
            $Type : 'UI.DataField',
            Value : Author.Biography,
            Label : 'Biography',
        },]
);
