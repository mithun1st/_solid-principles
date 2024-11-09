void main() {
  final ob1 = Singleton();
  print('---');
  final ob2 = Singleton();
  print('---');
  final ob3 = Singleton();
  print('---');

  print(ob1 == ob2);
  print('---');
  print(ob2 == ob3);
}

// Singleton

class Singleton {
  static final _instance = Singleton._();

  Singleton._() {
    // calls once while first object created
    print("#2nd call");
  }

  factory Singleton() {
    print("#1st call");
    return _instance;
  }
}

/*
  #1st call
  #2nd call
  -
  #1st call
  -
  #1st call
  -
  true
*/