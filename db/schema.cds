using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';
namespace com.sap.bookstore;

entity Books : cuid, managed {
    Title: String;
    Author: Association to Authors;
    Language: Association to Languages default 'ENG';
    Description: String;
    Genre : String;
    PageCount : Integer;
    Rating: Decimal;
    Publisher : String;
}

entity Authors : cuid, managed {
    Name: String;
    DateOfBirth : Date;
    Nationality : String;
    Biography : String;
    Website : String;
    Books: Association to many Books on Books.Author = $self;
}

entity Languages : CodeList {
key code: String enum {
    English = 'ENG';
    Japaneses = 'JPN';
    Korean = 'KOR';
};
}