import 'package:anilibria_api/src/enums.dart';
import 'package:anilibria_api/src/types.dart';

Dict normalizeTitleDescription(Dict json, DescriptionTypes? descriptionType) {
  // Вебсокет возвращает описание в виде объекта с тремя полями,
  // в тоже время http запрос возвращает строку.
  // Поэтому преобразуем строку в объект с указанным в запросе типом описания
  if (json["description"] is String) {
    if (descriptionType != null) {
      json["description"] = {descriptionType.apiName: json["description"]};
    } else {
      json["description"] = {"plain": json["description"]};
    }
  }
  return json;
}

/// Исправляет возможные нелогичные моменты у объекта тайтла
Dict normalizeTitle(Dict json, DescriptionTypes? descriptionType) {
  if (json["description"] != null) {
    normalizeTitleDescription(json, descriptionType);
  }
  return json;
}
