using my.bookshop as my from '../db/schema';

service CatalogService @(impl: 'srv/cat-service.js'){
    @Capabilities : { Insertable: true, Deletable:true }
     
    entity Books as projection on my.Books;
    entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders;
}


