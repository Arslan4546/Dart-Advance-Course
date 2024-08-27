void main(List<String> args) {
// list declaration styles

// simple declaring a list with mentioning int with list reference and also with the list template
  List<int> list1 = <int>[1, 2, 3, 4, 5];
  //list1 = list2;  you can assign any list to the list1
  // list1[1] = 78; also you can add item into this  list1 manually
  // but you cannot add any data type varibale rather than integer
  // this is the simpler declaration list type
  // print(list1);

  // declaring list with final keyword  before declaration of the list2
  final List<int> list2 = <int>[1, 2, 3, 4, 5]; //can add manually
  //list2 = list1; // you cannot assign any list to the list2
  //list2[1] = 78; //  you can add item into this  list2 manually also
  //this is the declaration of list2 with the final keyword
  // print(list2);

  // declaring list with const keyword before declaration of the list2
  const List<int> list3 = <int>[1, 2, 3, 4, 5]; // cannot add manually
  //list3 = list1; // you cannot assign any list to the list3
  //list3[1] = 78; //  you cannot add item into this  list3 manually also
  //this is the declaration of list3 with the const keyword
  // print(list3);

  // declaring list without mentioning int data type with list template only
  List<int> list4 = [
    1,
    2,
    3,
    4,
    5,
  ];

  //list4 = list1; // you can assign any list to the list4
  // list4[1] = 78; //  you can add item into this  list4 manually
  //this is the declaration of list4 without any specific keyword
  // print(list4);
  //this means we can only assing integer values into the list4

  // declaring list with const keyword and not mentioning List<int> with the list reference
  const list5 = <int>[1, 2, 3, 4, 5];

  //list5 = list1; // you cannot assign any list to the list5
  //list5[1] = 78; //  you cannot add item into this  list5 manually
  //this is the declaration of list5 with const keyword
  //print(list5);

  // declaring list with final keyword and not mentioning List<int> with the list reference
  final list7 = <int>[1, 2, 3, 4, 5];
  //list7 = list1; // you cannot assign any list to the list7
  // list7[1] = 78; //  you can add item into this  list7 manually
  //this is the declaration of list7 with the final keyword
  //print(list7);

  // declaring list with var keyword and not mentioning List<int> with the list reference
  var list8 = <int>[1, 2, 3, 4, 5];
  //list8 = list1; // you can assign any list to the list8
  //list8[1] = 78; //  you can add item into this  list8 manually
  //this is the declaration of list8 with the var keyword
  //print(list8);

  // declaring list without mentioning any data type with list reference and list template
  List list9 = [1, 2, 3, 4, 5, 6.6];

  //list9 = list1; // you can assign any list to the list9
  //list9[1] = 78; //  you can add item into this  list9 manually
  //this is the declaration of list9 without any specific keyword
  //print(list9);
  //print(list9.runtimeType); // (dyamic) becasue we cannot mentioned any specific keyword
  // it means you can add every thing in the list9

  // declaring list without mentioning any data type with list reference and list template
  var list10 = [1, 2, 3, 4, 5, 6.6, "Arslan"];
  //list10 = list1; // you can assign any list to the list10
  //list10[1] = 78; //  you can add item into this  list10 manually
  //this is the declaration of list10 with the var keyword
  //print(list10);
  print(list10.runtimeType); // num becasue we can add both int and double

  // declaring list with const keyword
  const List<int> list11 = <int>[1, 2, 3, 4, 5];
  //list11 = list1; // you cannot assign any list to the list11
  // list11[1] = 78; //  you cannot add item into this  list11 manually
  //this is the declaration of list11 with the const keyword
  // print(list11);

  // declaring list with final keyword with list reference and const with list template
  final List<int> list12 = const <int>[1, 2, 3, 4, 5];
  //list12 = list1; // you cannot assign any list to the list12
  // list12[1] = 78; //  you cannot add item into this  list12 manually
  //this is the declaration of list12 with the final keyword with begging and const with list template
  // print(list11);

  // declaring list with var keyword with list reference and const with list template
  var list13 = const <int>[1, 2, 3, 4, 5];
  //list13 = list1; // you can assign any list to the list13
  // list13[1] = 78; //  you cannot add item into this  list13 manually
  //this is the declaration of list13 with the const keyword
  // print(list13);

  // declaring list with list data type and use const with list template and also mentioned literals data type (int)
  List<int> list14 = const <int>[1, 2, 3, 4, 5];
  //list14 = list1; // you can assign any list to the list14
  // list14[1] = 78; //  you cannot add item into this  list14 manually
  //this is the declaration of list14 with the const keyword with list template
  // print(list14);

  // declaring list with list data type and use const with list template
  List<int> list15 = const [
    1,
    2,
    3,
    4,
    5,
  ];

  //list15 = list1; // you can assign any list to the list15
  // list15[1] = 78; //  you cannot add item into this  list15 manually
  //this is the declaration of list15 with the const keyword with list template
  // print(list15);
}

// simple example of List in which we store the json objects
// its declaration data types will be <Map<String, dynamic>>

List<Map<String, dynamic>> myList = <Map<String, dynamic>>[
  {"userId": 1, "id": 1, "title": "quidem molestiae enim"},
  {"userId": 1, "id": 2, "title": "sunt qui excepturi placeat culpa"},
  {"userId": 1, "id": 3, "title": "omnis laborum odio"},
];
