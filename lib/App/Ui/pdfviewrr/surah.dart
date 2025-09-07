import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Surah extends StatefulWidget {
  const Surah({super.key});

  @override
  State<Surah> createState() => _SurahState();
}

TextEditingController _numbercontroller = TextEditingController();
PdfViewerController _pdfViewerController = PdfViewerController();

bool isload = true;

class _SurahState extends State<Surah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.search, color: Colors.white),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                title: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text("Search page number"),
                      TextField(
                        controller: _numbercontroller,
                        decoration: InputDecoration(
                          hint: Text(
                            "Enter page number",
                            style: TextStyle(fontSize: 10),
                          ),

                        
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (_numbercontroller.text.isNotEmpty) {
                            int page =
                                int.tryParse(_numbercontroller.text) ?? 1;
                            {
                              _pdfViewerController.jumpToPage(page);
                            }
                            Navigator.of(context).pop();
                          }
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
      ),
      body: Stack(
        children: [
          SfPdfViewer.asset(
            controller: _pdfViewerController,
            "assets/pdfssfiles/_islam_quran-pdf_arabic (2).pdf",

            onDocumentLoaded: (details) {
              setState(() {
                isload = false;
              });
            },

            onDocumentLoadFailed: (details) {
              setState(() {
                isload = false;
              });
            },
          ),
          if (isload)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinearProgressIndicator(minHeight: 2),

                  Gap(10),
                  Text("Ayat's are loading..."),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
