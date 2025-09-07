import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Quran_e_Majeed extends StatefulWidget {
  const Quran_e_Majeed({super.key});

  @override
  State<Quran_e_Majeed> createState() => _Quran_e_MajeedState();
}

class _Quran_e_MajeedState extends State<Quran_e_Majeed> {
  final PdfViewerController _pdfViewerController = PdfViewerController();
  TextEditingController _pagecontroller = TextEditingController();
  bool isloading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "Quran E Majeed",
          style: TextStyle(fontSize: 15, letterSpacing: 3),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SfPdfViewer.asset(
            onDocumentLoadFailed: (details) {
              setState(() {
                isloading = false;
              });
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Some Thing Went Wrong")));
            },
            onDocumentLoaded: (details) {
              setState(() {
                isloading = false;
              });
            },
            "assets/pdfssfiles/01-Quraan-e-Kareem-Arabic.pdf",
            controller: _pdfViewerController,
          ),

          if (isloading)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(height: 12),
                  Text(
                    "Loading Quran...",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Text("Search Page Number"),
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: _pagecontroller,
                        decoration: InputDecoration(
                          hint: Text(
                            "Enter page number",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                      Gap(5),
                      TextButton(
                        onPressed: () {
                          if (_pagecontroller.text.isNotEmpty) {
                            int page = int.tryParse(_pagecontroller.text) ?? 1;
                            _pdfViewerController.jumpToPage(page);
                          }
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 3,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.search, color: Colors.white),
      ),
    );
  }
}
