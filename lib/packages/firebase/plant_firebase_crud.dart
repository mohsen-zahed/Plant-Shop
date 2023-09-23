import 'package:plant_shop/models/plant_model.dart';
import 'package:plant_shop/packages/firebase/firebase_database_paths.dart';
import 'realtime_database_instance.dart';


//! Method to add a plant...
//! Method to add a plant...
Future<void> addPlantToFirebaseDatabase({
  required PlantModel plantModel,
  required Function() whenComplete,
  required Function(String) onError,
}) async {
  try {
    await databaseReference
        .child('${FirebaseDatabasePaths.kPlants}/${plantModel.getPlantId()}')
        .set(plantModel.toMap());
    whenComplete();
  } catch (e) {
    onError(e.toString());
  }
}


//! Method to bookmark a plant...
//! Method to bookmark a plant...
Future<void> addPlantToBookmarkedFirebaseDatabase({
  required PlantModel plantModel,
  required Function() whenComplete,
  required Function(String) onError,
}) async {
  try {
    await databaseReference
        .child(
            '${FirebaseDatabasePaths.kBookmarkedPlants}/${plantModel.getPlantId()}')
        .set(plantModel.toMap());
    whenComplete();
  } catch (e) {
    onError(e.toString());
  }
}


//! Method to fetch plants...
//! Method to fetch plants...
Future<List<PlantModel>> getPlantFromFirebaseDatabase() async {
  var plants =
      await databaseReference.child(FirebaseDatabasePaths.kPlants).get();
  if (plants.exists) {
    var plantsMap = plants.value as Map;
    List<PlantModel> fetchedPlantsList = [];
    for (var plant in plantsMap.values) {
      fetchedPlantsList.add(
        PlantModel.fromMap(plant),
      );
    }
    return fetchedPlantsList;
  }
  return [];
}


//! Method to fetch bookmarked plants...
//! Method to fetch bookmarked plants...
Future<List<PlantModel>> getBookmarkedPlantFromFirebaseDatabase() async {
  var bookmarkedPlants = await databaseReference
      .child(FirebaseDatabasePaths.kBookmarkedPlants)
      .get();
  if (bookmarkedPlants.exists) {
    var plantsMap = bookmarkedPlants.value as Map;
    List<PlantModel> fetchedBookmarkedPlantsList = [];
    for (var bookmarkedPlant in plantsMap.values) {
      fetchedBookmarkedPlantsList.add(
        PlantModel.fromMap(bookmarkedPlant),
      );
    }
    return fetchedBookmarkedPlantsList;
  }
  return [];
}
