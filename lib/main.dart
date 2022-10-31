import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_loc/CameraPage.dart';
import 'package:image_loc/LocationPage.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "App",
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: SafeArea(
        child: Column(
          children: [
            //Kalau nak guna image_picker pun boleh
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await availableCameras().then((value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => CameraPage(cameras: value))));
                },
                child: const Text("Take a Picture"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LocationPage()),
                );
              },
              child: const Text("Get Location Sample"),
            ),
          ],
        ),
      ),
    );
  }
}
