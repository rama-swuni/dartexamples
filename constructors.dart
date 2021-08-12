void main() {
 
  Book book1 = new Book("Harry Potter and the Prisoner of Azkaban");
  print(book1.getName());
  print(book1.name);


  
}

// class Book{
//   //creates a default constructor 
//   String name;
//   String setName(String bookName){
//     name = bookName;
//   }
//   String getName(){
//     return name;
//   }
// }

class Book{
  //public attribute to store the name of the book
  String name;
 //The constructor can be written using "Syntactic Sugar" as such
  //using positional parameter construct
  Book(this.name);
  String getName(){
    return this.name;
  }
}

// class Book{
//   //public attribute to store the name of the book
//   String name;
//  //The constructor can be written using "Syntactic Sugar" as such
//   //using named parameter construct
//   Book({this.name});
//   String getName(){
//     return this.name;
//   }
// }

// class Book{
//   //private attribute to store the name of the book
//   String _name;
//  //The constructor can be written using "Syntactic Sugar" as such
//   //using positional parameter construct
//   Book(this._name);
//   String getName(){
//     return this._name;
//   }
// }

// class Book{
//   //public attribute to store the name of the book
//   String name;
//   //Constructor
//   Book(String bookName){
//     this.name = bookName;
//   }
//   String getName(){
//     return this.name;
//   }
// }

// class Book{
//   //private attribute to store the name of the book
//   String name;
//   //Constructor
//   Book(String bookName){
//     this.name = bookName;
//   }
//   String getName(){
//     return this.name;
//   }
// }
