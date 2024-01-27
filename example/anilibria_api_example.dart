import 'package:anilibria_api/anilibria_api.dart';

void main() async {
  var client = AnilibriaClient();
  var title = await client.getTitle(code: "sousou-no-frieren");
  print(title.names?.ru);
}
