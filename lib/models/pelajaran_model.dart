class PelajaranModel {
  final String id, nama, youTubeID;

  PelajaranModel(
      {required this.id, required this.nama, required this.youTubeID});

  factory PelajaranModel.fromJson(Map<String, dynamic> json) => PelajaranModel(
      id: json["id"],
      nama: json["nama"],
      youTubeID: json["detail"][0]["youtube_id"]);
}
