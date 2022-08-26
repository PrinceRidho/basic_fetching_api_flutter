class Mahasiswa {
  final int id;
  final int ipk;
  final String name;

  const Mahasiswa({
    required this.id,
    required this.ipk,
    required this.name,
  });

  factory Mahasiswa.fromJson(Map<String, dynamic> json) {
    return Mahasiswa(
      id: json['id'],
      ipk: json['ipk'],
      name: json['name'],
    );
  }
}
