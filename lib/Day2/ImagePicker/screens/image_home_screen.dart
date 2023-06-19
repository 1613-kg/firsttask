import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class imagePick extends StatefulWidget {
  imagePick({super.key});

  @override
  State<imagePick> createState() => _imagePickState();
}

class _imagePickState extends State<imagePick> {
  File? img;
  void pickImage(ImageSource src, BuildContext context) async {
    final image = await ImagePicker().pickImage(source: src);
    if (image != null) {
      setState(() {
        img = File(image.path);
      });
    }
  }

  showDialogOpt(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    pickImage(ImageSource.camera, context);
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.camera),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Camera"),
                    ],
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    pickImage(ImageSource.gallery, context);
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.album),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Gallery"),
                    ],
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.close),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Close"),
                    ],
                  ),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Pick"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: (img == null)
                  ? Text("Loading...")
                  : Image.file(
                      img!,
                      fit: BoxFit.cover,
                    ),
            ),
            Divider(
              thickness: 3,
              endIndent: 30,
              indent: 30,
            ),
            ElevatedButton(
              child: Text("Add Image"),
              onPressed: () {
                showDialogOpt(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
