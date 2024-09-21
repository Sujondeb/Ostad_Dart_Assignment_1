class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, [this.pagesRead = 0]) {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book('Cuker bali 1','Rabindronath tagur', 1949);
  Book book2 = Book('Cuker bali 2','Rabindronath tagur', 1955);
  Book book3 = Book('Cuker bali 3','Rabindronath tagur', 1960);

  book1.read(100);
  book2.read(200);
  book3.read(300);

  print("Book 1:");
  print("Title : ${book1.getTitle()}");
  print("Author : ${book1.getAuthor()}");
  print("Publication Year : ${book1.getPublicationYear()}");
  print("Pages Read : ${book1.getPagesRead()}");
  print("Age of the Book : ${book1.getBookAge()} years \n");

  print("Book 2:");
  print("Title : ${book1.getTitle()}");
  print("Author : ${book1.getAuthor()}");
  print("Publication Year : ${book1.getPublicationYear()}");
  print("Pages Read : ${book1.getPagesRead()}");
  print("Age of the Book : ${book1.getBookAge()} years \n");

  print("Book 3:");
  print("Title : ${book1.getTitle()}");
  print("Author : ${book1.getAuthor()}");
  print("Publication Year : ${book1.getPublicationYear()}");
  print("Pages Read : ${book1.getPagesRead()}");
  print("Age of the Book : ${book1.getBookAge()} years \n");

  print("Total number of book created ; ${Book.totalBooks}");
}
