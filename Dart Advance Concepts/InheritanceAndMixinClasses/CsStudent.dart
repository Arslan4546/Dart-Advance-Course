import 'StudentClass.dart';

class Csstudent implements Studentclass {
  @override
  double fee = 0;

  @override
  String name = "Mannan";

  @override
  int rollNo = 22;

  Csstudent(this.fee, this.name, this.rollNo);

  @override
  void foo() {
    print("This is the Cs Student Class  ");
  }
}

// ap dart k ander kissi bhi class ko kissi bhi class k sath extends bhi kr skty hain or implements bhi kr skty hian ye ap per hai
 // ager apko parents class k jo feature hain un ko implementation chahhyee to apko implements krna best hai or ager apko just parent class ki properties ko access krna hai to apko just extends krny ki zaroorat hai
 