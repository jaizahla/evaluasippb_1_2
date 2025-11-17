class Hewan {
  String nama;
  double berat;

  Hewan(this.nama, this.berat);

  void makan(double porsi) {
    berat += porsi; // tambah berat (kg)
  }

  void lari(double porsi) {
    berat -= porsi; // kurangi berat (kg)
    if (berat < 0) berat = 0; // biar tidak minus
  }
}