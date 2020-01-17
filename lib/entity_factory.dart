import 'package:flutter_wordpress/enrty/catalog_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "CataLogEntity") {
      return CatalogEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}