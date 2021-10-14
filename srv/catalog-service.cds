using my.bookshop as my from '../db/schema';

service CatalogService @(impl: 'srv/cat-service.js'){
    @Capabilities : { Insertable: true, Deletable:true }
     
    entity Books as projection on my.Books{
        *, author.name as authorName
    };
   
   @readonly
   entity StatusCode as projection on my.MyBookStatus;



     @Capabilities : { Insertable: true, Deletable:true }
    entity Authors as projection on my.Authors;

      @Capabilities : { Insertable: true, Deletable:true }
    entity Orders as projection on my.Orders;

}


