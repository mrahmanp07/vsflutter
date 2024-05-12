import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Image"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100.0,
              ),
              IconButton(
                  onPressed: () async {
                    ImagePicker imagePicker = ImagePicker();
                    XFile? file =
                        await imagePicker.pickImage(source: ImageSource.camera);

                    print("--------------------------");
                    print('${file?.path}');

                    if (file == null) return;

                    String uniqueFiileName =
                        DateTime.now().millisecondsSinceEpoch.toString();

                    Reference referenceRoot = FirebaseStorage.instance.ref();
                    Reference referenceDirImages =
                        referenceRoot.child('images');

                    Reference referenceImageToUpload =
                        referenceDirImages.child(uniqueFiileName);

                    try {
                      await referenceImageToUpload.putFile(File(file!.path));
                      var imageUrl =
                          await referenceImageToUpload.getDownloadURL();
                    } catch (error) {}
                  },
                  icon: const Icon(Icons.camera_enhance)),
              ElevatedButton(onPressed: () {}, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
