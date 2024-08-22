void main(List<String> args) {
  //  declaration of list
  List<int> list = [1, 2, 3, 4, 5];
  print(list);

// spread an existing into a new list
  List<int> list1 = [3, 4, 5, ...list];
  print(list1);

// spread tow list existing into a new list
  List<int> list3 = [8, 9, 7, 6, ...list1, ...list];
  print(list3);

//initializing a new nullAble List
  List<int>? lst;
  // using null-aware spread operator to make a condition into the list
  //if the lst is empty then it will not spread into the new list but if it will not empty then it will spread
  // into the new list
  List<int> list4 = [3, 4, 5, ...?lst];
  print(list4);

//Conditional IF

// using only IF Condition in the list5
  List<int> list5 = [0, 9, 8, 7, if (list.length > 5) ...list4];
  // using only IF ELSE Condition in the list6
  List<int> list6 = [0, 9, 8, 7, if (list.length > 5) ...list4 else ...list3];

// COndition FOR
// Usint For Loop in the list7
  List<int> list7 = [for (int i = 1; i <= 1000; i++) i];
  print(list7);

  // Condition FOR and Conditional Expression in the list
  List<int> list8 = [for (int i = 1; i <= 1000; i++) i % 2 == 0 ? i : 0];
  print(list8);

  List<int> list9 = [for (var item in list) item];
  print(list9);

  List<int?> list10;
  // it means the list will be not null but the int type may be null

  List<int>? list11;
  // it means the list will be null but the int type will not null

  List<int?>? list12;
  // it means the list will be null and int type will also be null as well
}
