using my.bookshop as my from '../db/schema';

service CatalogService @(impl: 'srv/cat-service.js'){
    @Capabilities : { Insertable: true, Deletable:true }
     
    entity Books as projection on my.Books{
        *, author.name as authorName
    };
   
     @Capabilities : { Insertable: true, Deletable:true }
    entity Authors as projection on my.Authors;

      @Capabilities : { Insertable: true, Deletable:true }
    entity Orders as projection on my.Orders;

}


