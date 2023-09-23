import 'package:plant_shop/constants/lists.dart';
import 'package:plant_shop/packages/firebase/plant_firebase_crud.dart';

Future<void> getPlants() async {
  fetchedPlantsListFromDatabase = await getPlantFromFirebaseDatabase();
}

Future<void> getBookmarkedPlants() async {
  fetchedBookmarkedPlantsListFromDatabase =
      await getBookmarkedPlantFromFirebaseDatabase();
}
