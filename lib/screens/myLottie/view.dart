import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class MyLottieView extends StatefulWidget {
  const MyLottieView({Key? key}) : super(key: key);

  @override
  State<MyLottieView> createState() => _MyLottieViewState();
}

class _MyLottieViewState extends State<MyLottieView> {
  String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
        ),
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () async{
                      var image = await ImagePicker.platform.getImage(source: ImageSource.camera);
                      if (image != null) {
                        print(image.path);
                        imagePath = image.path;
                        setState(() {});
                      } else {
                        print("no image found");
                      }
                    },
                    iconSize: 100,
                    icon: Icon(Icons.camera)),
                IconButton(
                    onPressed: () async {
                      var image = await ImagePicker.platform
                          .getImage(source: ImageSource.gallery);
                      if (image != null) {
                        print(image.path);
                        imagePath = image.path;
                        setState(() {});
                      } else {
                        print("no image found");
                      }
                    },
                    iconSize: 100,
                    icon: Icon(Icons.photo)),
              ],
            ),
              if (imagePath != null)
              Image.file(File(imagePath!)),
            ElevatedButton(onPressed: () {} , child: Text("click")),
             CircleAvatar(),
            CircularProgressIndicator(),
            OutlinedButton(onPressed: () {

            }, child: Text("Click"),)

          ],
        ),
      ),
    )
    );
  }
}
