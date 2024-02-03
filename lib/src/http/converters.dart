import 'package:anilibria_api/src/enums.dart';

String stringifyObject(Object object) {
  if (object is List) {
    return [for (final obj in object) stringifyObject(obj)].join(",");
  }
  if (object is DescriptionTypes) {
    return object.apiName;
  }
  if (object is IncludeTypes) {
    return object.apiName;
  }

  return object.toString();
}
