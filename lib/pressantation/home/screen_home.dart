import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translator/core/core_datas.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text(
              "Text Translation",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.grey,
            ),
            height10,
            height10,
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //       maximumSize:
            //           Size(MediaQuery.of(context).size.width / 2.5, 50),
            //       backgroundColor: Colors.grey.shade900,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10))),
            //   child: const Text("Germany"),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomLanguageContainer(
                    imageUrl: "asset/Images/germany.png",
                    countryName: "Germany"),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.arrow_right_arrow_left,
                      color: Colors.grey,
                      size: 15,
                    )),
                InkWell(
                  onTap: () {
                    modalBottomSheetMenu(context);
                  },
                  child: const CustomLanguageContainer(
                    imageUrl: "asset/Images/spain.png",
                    countryName: "Spain",
                  ),
                ),
              ],
            ),
            height10,
            const Text(
              "Translate From(germany)",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            height10,
            const CustomTextFieldWidget(),
            height10,
            const Text(
              "Translate To(Spain)",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            height10,
            const CustomTextFieldWidget(),
          ],
        ),
      ),
    );
  }

  void modalBottomSheetMenu(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        context: context,
        builder: (builder) {
          return Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              height: 500.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  children: [
                    const Text(
                      "From",
                      style: TextStyle(color: Colors.grey),
                    ),
                    height10,
                    const TextField(
                      decoration:
                          InputDecoration(prefixIcon: Icon(Icons.search)),
                    )
                  ],
                ),
              ));
        });
  }
}

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
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
            style: TextStyle(color: Colors.white),
            maxLength: 2300,
            maxLines: 7,
            cursorColor: Colors.white,
            decoration: InputDecoration(
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
