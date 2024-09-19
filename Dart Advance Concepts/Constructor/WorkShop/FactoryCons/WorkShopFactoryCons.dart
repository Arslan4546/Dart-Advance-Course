class Toy {
  static const _toysList = <Toys, Toy>{
    Toys.batman: Toy._('batman'),
    Toys.superman: Toy._('superman'),
    Toys.spidrman: Toy._('spiderman'),
    Toys.aquaman: Toy._('aquaman'),
  };

  final String name;
  //.....GENERATIVE PRIVATE CONSTRUCTOR
  const Toy._(this.name);
  //....FACTORY CONSTRUCTOR
  factory Toy(Toys toyName) {
    return _toysList[toyName]!;
  }
}

enum Toys {
  batman,
  superman,
  spidrman,
  aquaman,
}

void main(List<String> args) {
  Toy spider = Toy(Toys.spidrman);
  Toy aqua = Toy(Toys.aquaman);
  Toy bat = Toy(Toys.batman);
  Toy superma = Toy(Toys.superman);
  print(spider.name);
  print(aqua.name);
  print(bat.name);
  print(superma.name);
}
