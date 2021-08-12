Map<String,double> booksIOwn = new Map<String, double>();
void main() {
  addBookPositional('Harry Potter and the Philosophers Stone', 10.29);
  addBookNamed(price: 20.44, name:'Just One More Thing - Peter Falk');
  addBookNamed();//This will work but will set the default values to null
  //That is because the Named Arguments are always optional and will
  //have a default value of null.
  addBookNamedDefaultValue(name:'Contested Will');
  addBookMixedDefaultValue('God on God');
  addBookMixedOptional('The Kite Runner');
}

//Function with Positional Arguments - default mode
void addBookPositional(String name, double price){
  booksIOwn[name]=price;
  print(booksIOwn);
}
//Function with Named Arguments: notice that the 
//arguments are enclosed in {}
void addBookNamed({String name, double price}){
  booksIOwn[name]=price;
  print(booksIOwn);
}
//Functions with Named Argument but with a default value for the price
void addBookNamedDefaultValue({String name, double price=12.244}){
  booksIOwn[name]=price;
  print(booksIOwn);
}
//Can mix and match named and positional values too
void addBookMixedDefaultValue(String name, {double price=39.44}){
  booksIOwn[name]=price;
  print(booksIOwn);
}
//Making a named argument as required
void addBookMixedOptional(String name, [double price]){
  booksIOwn[name]=price;
  print(booksIOwn);
}

