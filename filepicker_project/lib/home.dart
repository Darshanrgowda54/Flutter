import 'package:flutter/material.dart';
import 'package:open_app_file/open_app_file.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> pickedFiles = [];

  void selectFiles() {
    // Dummy data for now — you can add a picker later
    setState(() {
      pickedFiles.add("File ${pickedFiles.length + 1}.pdf");
    });
  }

  void openFile(String filePath) {
    OpenAppFile.open(filePath);
  }

  Widget getFileLogo(String filePath) {
    if (filePath.endsWith(".pdf")) {
      return const Icon(Icons.picture_as_pdf, color: Colors.red);
    } else if (filePath.endsWith(".png") || filePath.endsWith(".jpg")) {
      return const Icon(Icons.image, color: Colors.blue);
    } else {
      return const Icon(Icons.insert_drive_file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: selectFiles,
              child: const Text(
                "Select File",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 40),

            if (pickedFiles.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  itemCount: pickedFiles.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => openFile(pickedFiles[index]),
                      child: Card(
                        child: ListTile(
                          leading: getFileLogo(pickedFiles[index]),
                          title: Text(pickedFiles[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
