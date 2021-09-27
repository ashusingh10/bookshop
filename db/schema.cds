namespace my.bookshop;

using { cuid, managed, Country } from '@sap/cds/common';

entity Books{
    key ID : UUID @odata.Type:'Edm.String';
    title : String;
    stock : Integer;
    country: Country;
    author : Association to  Authors;
}

entity Authors {
    key ID :  UUID @odata.Type:'Edm.String';
    name : String;
    books : Association to many Books on books.author = $self;
}
  
 entity Orders : cuid, managed {
     book : Association to Books;
    quantity : Integer;
 }   


 
