import 'package:flutter/material.dart';

class CustomLanguageContainer extends StatelessWidget {
  final String imageUrl;
  final String countryName;
  const CustomLanguageContainer({
    required this.imageUrl,
    required this.countryName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
          color: Colors.grey.shade900, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
                height: 25,
                width: 25,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              width: 10,
            ),
            Text(
              countryName,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
