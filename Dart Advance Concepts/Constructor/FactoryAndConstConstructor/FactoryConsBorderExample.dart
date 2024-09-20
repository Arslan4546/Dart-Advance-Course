class Border {
  static final Map<Borders, Border> _borderMap = {
    Borders.noBorder: Border._(borderType: Borders.noBorder.name),
    Borders.singleBorder: Border._(borderType: Borders.singleBorder.toString()),
    Borders.doubleBorder: Border._(borderType: Borders.doubleBorder.toString()),
    Borders.threeDBorder: Border._(borderType: Borders.threeDBorder.toString()),
  };

  final String borderType;

  const Border._({required this.borderType});
  factory Border(Borders bord) {
    return _borderMap[bord]!;
  }
}

enum Borders {
  noBorder,
  singleBorder,
  doubleBorder,
  threeDBorder,
}
