using ManageAuthor as service from '../../srv/schema';
annotate service.Authors with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DateOfBirth',
                Value : DateOfBirth,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Nationality',
                Value : Nationality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Biography',
                Value : Biography,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Website',
                Value : Website,
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
            Label : 'Books',
            ID : 'Books',
            Target : 'Books/@UI.LineItem#Books',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>DateOfBirth}',
            Value : DateOfBirth,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Nationality',
            Value : Nationality,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Biography',
            Value : Biography,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Website',
            Value : Website,
        },
    ],
);

annotate service.Authors with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Name,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : Biography,
        },
    }
);
annotate service.Books with @(
    UI.LineItem #Books : [
        {
            $Type : 'UI.DataField',
            Value : Title,
            Label : 'Title',
        },{
            $Type : 'UI.DataField',
            Value : Language_code,
            Label : '{i18n>Language}',
        },{
            $Type : 'UI.DataField',
            Value : Genre,
            Label : 'Genre',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#Rating',
            Label : 'Rating',
        },]
);
annotate service.Books with @(
    UI.DataPoint #Rating : {
        Value : Rating,
        Visualization : #Rating,
        TargetValue : 5,
    }
);
