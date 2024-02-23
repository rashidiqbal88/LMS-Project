import 'dart:io';
import 'userlogin.dart';
// import 'bookslist.dart';

void main() {
  print("Welcome To Library Management System");
  print("====================");
  print("LOGIN FORM ");
  print("====================");

  userLoginform();
  print("");

  var programContinue = true;

  while (programContinue) {
    programSteps();
    var userInput = stdin.readLineSync();

    if (userInput == "1") {
      addBook();
      print("");
    } else if (userInput == "2") {
      viewBook();
      print("");
    } else if (userInput == "3") {
      updateBook();
      print("");
    } else if (userInput == "4") {
      deleteBook();
      print("");
    } else if (userInput == "5") {
      quantityBook();
      print("");
    } else {
      print("Now you are exit for the Program");
      programContinue = false;
    }
  }
}

List addnewBookDetails = [];

programSteps() {
  print("Press 1 for Add Book:");
  print("Press 2 for View Book:");
  print("Press 3 for Update Book:");
  print("Press 4 for Delete Book:");
  print("Press 5 for Quantity Book:");
}

viewBook() {
  for (var x = 0; x < addnewBookDetails.length; x++) {
    print("$x : ${addnewBookDetails[x]}");
  }
}

// Add New Book Detail Function
addBook() {
  print("--Add Book Details--");

  print("Add Searl No =>");
  var addSearl = stdin.readLineSync();
  print("Add Book Name =>");
  var addBook = stdin.readLineSync();
  print("Add Auther =>");
  var addAuther = stdin.readLineSync();
  print("Add Price =>");
  var addPrice = stdin.readLineSync();

  Map insertBookDetails = {
    "Searl No": addSearl,
    "Book Name": addBook,
    "Auther": addAuther,
    "Price": addPrice,
  };
  addnewBookDetails.add(insertBookDetails);
}

// Update Book Details Function:
updateBook() {
  print("Enter the Serial No for Book Update:");

  var updateBookData = stdin.readLineSync();

  var resultUpdate = -1;
  for (var i = 0; i < addnewBookDetails.length; i++) {
    if (addnewBookDetails[i]["Searl No"] == updateBookData) {
      resultUpdate = i;
      break;
    }
  }

  if (resultUpdate != -1) {
    print("--Update Book Details--");
    print("Add Searl No =>");
    var updateSearl = stdin.readLineSync();
    print("Add Book Name =>");
    var updateBook = stdin.readLineSync();
    print("Add Auther =>");
    var updateAuther = stdin.readLineSync();
    print("Add Price =>");
    var updatePrice = stdin.readLineSync();

    addnewBookDetails[resultUpdate]["Searl No"] = updateSearl;
    addnewBookDetails[resultUpdate]["Book Name"] = updateBook;
    addnewBookDetails[resultUpdate]["Author"] = updateAuther;
    addnewBookDetails[resultUpdate]["Price"] = updatePrice;

    print("Book Update successfully.");
  } else {
    print("Book with Serial No $resultUpdate not found.");
  }
}

// Remove Book Details Function:
deleteBook() {
  print("Enter the Serial No for Delete Book:");
  var deleteSerial = stdin.readLineSync();

  var result = -1;
  for (var i = 0; i < addnewBookDetails.length; i++) {
    if (addnewBookDetails[i]["Searl No"] == deleteSerial) {
      result = i;
      break;
    }
  }

  if (result != -1) {
    addnewBookDetails.removeAt(result);
    print("Book deleted successfully.");
  } else {
    print("Book with Serial No $deleteSerial not found.");
  }
}

quantityBook() {
  print("Book Quantity");
}
