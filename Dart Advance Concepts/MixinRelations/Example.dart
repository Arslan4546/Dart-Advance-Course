mixin CatVoice {
  void voice() {
    print("mewoo");
  }
}

mixin Dogvoice implements CatVoice {
  void voice() {
    print("Bahoo");
  }
}
