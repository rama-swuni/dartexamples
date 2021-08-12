void main() {
  print(new BookRetriever().findFirstBookByAuthor('JKRowling'));
  print(new BookMixin('AgathaChristie').retrieveFirstBookByAuthor());
}


class BookDetails{
  Map<String,List> _booksIOwn = new Map<String, List>();
  //No-arg constructor with values filled in for the illustration
  BookDetails(){
    _booksIOwn['JKRowling']=
        ['Harry Potter Series','Casual Vacancy','Cormoran Series'];
    _booksIOwn['GRRM']=
        ['Song of Ice and Fire','DreamSongs'];
    _booksIOwn['AgathaChristie']=
        ['Hercule Poirot Series','Miss Marple Series','Tommy and Tuppence Series '];
  } 
  
  /*
   *API to retrieve the list of books written by an author
   *Ignored the checks for null for the moment.
   */
  List getBooksByAuthor(String author){
    return _booksIOwn[author];
  }
}

//A simple class which uses the BookDetails class to retrieve
//data related to an author. Behaves like a utility class
class BookRetriever{
  
  String findFirstBookByAuthor(String author){
    return BookDetails().getBooksByAuthor(author)[0];
  }
}

//This Mixin does not want to inherit from BookRetriever
//but rather use its methods as part of its own class

class BookMixin with BookRetriever{
  String _author;
  
  BookMixin(this._author);//using positional argument with private attribute
  
  String retrieveFirstBookByAuthor(){
    return findFirstBookByAuthor(_author);
  }
}
