class Clock {
  double hours;
  double minutes;
  double seconds;

  Clock({this.hours = 0, this.minutes = 0, this.seconds = 0});

  @override
  String toString() {
    return "$hours : $minutes : $seconds";
  }

// Method 1

  // Clock operator +(Clock other) {
  //   return Clock(
  //     hours: hours + other.hours,
  //     minutes: minutes + other.minutes,
  //     seconds: seconds + other.seconds,
  //   );
  // }
  // q k + operator num ki class sy inherit ho kr aa rha hai to isss lyee iss k parameter ko cast ni krna prta

  // Method 2

  Clock Plus(Clock other) {
    return Clock(
      hours: hours + other.hours,
      minutes: minutes + other.minutes,
      seconds: seconds + other.seconds,
    );
  }

  // Assignment Operator

  // bool operator ==(Clock other) {
  //   return (
  //     hours ==other.hours && minutes ==other.minutes && seconds == other.seconds
  //   );
  // }
  // ye assignment operator error show krvva rha hai mtlab iss ki parent class mai jo assignment operator ka function hai uss k parameter mai object hai but iss ka parameter mai Clock hai iss error ko remove krny k lyee hmary pass 2 methods hain

  //  Method 1
  //   bool operator ==(covariant Clock other) {
  //   return (
  //     hours ==other.hours && minutes ==other.minutes && seconds == other.seconds
  //   );
  // }
  // but innn ko cast krna prta hai q k object ki class mai parameters mai objecct orr iss k parameters mai Clock aa rha hai to humain casting krni pry gee

  //  Method 2
  bool operator ==(Object other) {
    return (hours == (other as Clock).hours &&
        minutes == other.minutes &&
        seconds == other.seconds);
  }

  // same iss mai bhi whi logic use hoga
}
