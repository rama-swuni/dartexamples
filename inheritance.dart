void main() {
  Book book1 = new Book("Harry Potter and the Prisoner of Azkaban");
  book1.itemCode = "10";
  book1.type="Fictional Books";  
  print("name = "+book1.name+" itemCode = "+book1.itemCode+ " type = "+book1.type);
}


class Stationery{
  String itemCode;
  String type;
  Stationery({this.itemCode, this.type});//named argument constructor
  Stationery.newStationery({this.itemCode, this.type});//named constructor
}

class Book extends Stationery{
  String name;
   Book(this.name): super();//using positional arguments
}

// class Book extends Stationery{
//   String name;
//   Book({this.name}):super();//using named arguments for Book but calling
//   //the default constructor for Stationery
// }

// class Book extends Stationery{
//   String name;
//   Book({this.name}):super(itemCode:"10",type:"Fiction");//using named arguments 
//   //for both Book and Stationery
// }

// class Book extends Stationery{
//   String name;
//    Book({this.name}):super.newStationery(itemCode:"10", type:"Fiction");//using 
//   //named arguments for Book but calling named constructor for Stationery
// }

// class Book extends Stationery{
//   String name;
//    Book.newBook({this.name}):super.newStationery(itemCode:"10", type:"Fiction");//using 
//   //named constructor with named arguments for Book 
//   //and calling named constructor for Stationery
// }
