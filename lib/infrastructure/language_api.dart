import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:translator/domain/languages_modal.dart';

class LanguageApiCalls {
  Future<List<LanguageModal>> languagesget() async {
    try {
      final response = await http.get(
          Uri.parse(
              "https://google-translate1.p.rapidapi.com/language/translate/v2/languages"),
          headers: {
            "Accept-Encoding": "application/gzip",
            "X-RapidAPI-Key":
                "67a829b56emshd5b8a633b73bfadp1ff903jsn081664df73e9",
            "X-RapidAPI-Host": "google-translate1.p.rapidapi.com",
          });
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        List<LanguageModal> languages = [];
        final Map<String, dynamic> languageMap = json.decode(response.body);
        final data = LanguageModal.fromJson(languageMap);
        languages.add(data);
        return languages;
      }
      log(response.body.toString());
    } catch (e) {
      log(e.toString());
    }
    return [];
  }
}
