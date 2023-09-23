class PlantModel {
  late String _plantImage;
  late String _plantTitle;
  late String _plantSTitle;
  late String _plantId;
  late String _plantDescription;
  late String _plantUsage;
  late String _plantNotice;
  late bool _plantIsSaved;


  PlantModel.init();

  PlantModel.createItem({
    required String plantImage,
    required String plantTitle,
    required String plantSTitle,
    required String plantId,
    required String plantDescription,
    required String plantUsage,
    required String plantNotice,
    required bool plantIsSaved,
  }) {
    _plantImage = plantImage;
    _plantTitle = plantTitle;
    _plantSTitle = plantSTitle;
    _plantId = plantId;
    _plantDescription = plantDescription;
    _plantUsage = plantUsage;
    _plantNotice = plantNotice;
    _plantIsSaved = plantIsSaved;
  }

  PlantModel.fromMap(Map<dynamic, dynamic> json) {
    _plantImage = json['plant_image'] ?? '';
    _plantTitle = json['plant_title'] ?? '';
    _plantSTitle = json['plant_sTitle'] ?? '';
    _plantId = json['plant_id'] ?? '';
    _plantDescription = json['plant_description'] ?? '';
    _plantUsage = json['plant_usage'] ?? '';
    _plantNotice = json['plant_notice'] ?? '';
    _plantIsSaved = json['plant_isSaved'] ?? false;
  }

  Map<String, Object?> toMap() {
    return {
      'plant_id': getPlantId(),
      'plant_image': getPlantImage(),
      'plant_title': getPlantTitle(),
      'plant_sTitle': getPlantSTitle(),
      'plant_description': getPlantDescription(),
      'plant_usage': getPlantUsage(),
      'plant_notice': getPlantNotice(),
      'plant_isSaved': getPlantIsSaved(),
    };
  }

  String getPlantImage() => _plantImage;
  String getPlantTitle() => _plantTitle;
  String getPlantSTitle() => _plantSTitle;
  String getPlantId() => _plantId;
  void setPlantId(int id) => _plantId = id.toString();
  String getPlantDescription() => _plantDescription;
  String getPlantUsage() => _plantUsage;
  String getPlantNotice() => _plantNotice;
  bool getPlantIsSaved() => _plantIsSaved;
  bool setPlantIsSaved(bool input) => _plantIsSaved = input;
}
