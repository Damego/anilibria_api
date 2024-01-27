String convertListToString(List<Object> list) {
  return list.join(",");
}

String stringifyObject(Object object) {
  if (object is List) {
    return convertListToString(object as List<Object>);
  }

  return object.toString();
}
