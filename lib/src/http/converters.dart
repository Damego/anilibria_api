import 'package:anilibria_api/src/enums.dart';

String convertListToString(List<Object> list) {
  return list.join(",");
}

String stringifyObject(Object object) {
  if (object is List) {
    return convertListToString(object as List<Object>);
  }
  if (object is DescriptionTypes) {
    return object.apiName;
  }
  if (object is IncludeTypes) {
    return object.apiName;
  }

  return object.toString();
}
