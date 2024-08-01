import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'video_player_widget.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  File? _media;
  bool _isImage = true; // 미디어 타입을 저장할 변수

  Future<void> _pickMedia() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.media,
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        _media = File(result.files.single.path!);
        String? mimeType = result.files.single.extension;
        _isImage = mimeType != null &&
            (mimeType == 'jpg' || mimeType == 'jpeg' || mimeType == 'png');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('You are on the Third Page'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Go Back'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/');
                },
                child: const Text('Go to Home Page'),
              ),
              SizedBox(height: 20),
              _media == null
                  ? const Text('No media selected.')
                  : _isImage
                      ? Image.file(_media!)
                      : VideoPlayerWidget(file: _media!),
              ElevatedButton(
                onPressed: _pickMedia,
                child: const Text('Pick Image or Video from Gallery'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
