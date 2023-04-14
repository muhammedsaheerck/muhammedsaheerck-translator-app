import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:translator/domain/languages_modal.dart';
import 'package:translator/infrastructure/language_api.dart';

class HomeProvider extends ChangeNotifier {
  List<LanguageModal> languageModal = [];
  List<Language> languages = [];
  TextEditingController controller = TextEditingController();

  void getLanguages() async {
    languageModal.clear();
    languages.clear();
    languageModal = await LanguageApiCalls().languagesget();
    for (var element in languageModal) {
      languages.addAll(element.data!.languages!);
      notifyListeners();
    }
    notifyListeners();
  }

  void searchLanguges(String value) {
    List<Language> result = [];
    if (value.isEmpty) {
      result.clear();
      result.addAll(languages);
    } else {
      result = languages
          .where((element) =>
              element.language!.toLowerCase().contains(value.toLowerCase()))
          .toList();

      notifyListeners();
    }
    languages.clear();
    languages.addAll(result);

    notifyListeners();
  }

//select language
  String selctedLanguge = "Select Lang";
  void selectLanguage(String value) {
    selctedLanguge = value;

    notifyListeners();
  }
}
