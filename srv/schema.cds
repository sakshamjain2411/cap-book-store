using { com.sap.bookstore as my } from '../db/schema';

service CatalogService {
    entity Books as projection on my.Books;
    // @readonly
    entity Authors as projection on my.Authors;
}

service ManageAuthor {
    entity Authors as projection on my.Authors;
    @readonly
    entity Books as projection on my.Books;
}

annotate CatalogService.Books with @odata.draft.enabled;
annotate ManageAuthor.Authors with @odata.draft.enabled;

annotate CatalogService with @(requires: 'BookManager');
annotate ManageAuthor with @(requires: 'AuthorManager');


