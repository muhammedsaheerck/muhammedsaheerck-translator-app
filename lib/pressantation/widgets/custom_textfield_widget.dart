import 'package:flutter/material.dart';

import '../../infrastructure/language_api.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
            onChanged: (value) async {
              await LanguageApiCalls().translateData();
            },
            style: const TextStyle(color: Colors.white),
            maxLength: 2300,
            maxLines: 7,
            cursorColor: Colors.white,
            decoration: const InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.grey,
              )),
              counterStyle: TextStyle(
                color: Colors.grey,
              ),
            )),
      ),
    );
  }
}
