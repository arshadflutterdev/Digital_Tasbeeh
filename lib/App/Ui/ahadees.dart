import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  final List<Map<String, String>> ahadees = [
    {
      'text':
          '"Whoever says: Subhan-Allahi wa bihamdihi (سبحان الله وبحمده) 100 times a day, '
          'his sins will be wiped away even if they are like the foam of the sea."',
      'reference': 'Sahih al-Bukhari (6405), Sahih Muslim (2691)',
      'arabic': 'من قال: سبحان الله وبحمده في يوم مائة مرة',
    },
    {
      'text':
          'A poor man came to the Prophet ﷺ and said:\n\n'
          '"The rich have gone with the highest ranks and eternal blessings. '
          'They pray as we pray, fast as we fast, but they give in charity and we cannot..."\n\n'
          'Prophet ﷺ said:\n\n'
          '"Shall I not teach you something by which you will catch up with those ahead of you? '
          'Say: SubhanAllah, Alhamdulillah, and Allahu Akbar 33 times after every prayer."',
      'reference': 'Sahih al-Bukhari (843), Sahih Muslim (595)',
      'arabic': 'عن أبي هريرة رضي الله عنه قال',
    },
    {
      'text':
          'Prophet ﷺ said:\n\n'
          '"Two words are light on the tongue, heavy on the scale, and beloved to the Most Merciful: '
          'SubhanAllahi wa bihamdihi, SubhanAllahil Azeem."',
      'reference': 'Sahih al-Bukhari (6406), Sahih Muslim (2694)',
      'arabic': 'سبحان الله وبحمده، سبحان الله العظيم',
    },
    {
      'text':
          'Prophet ﷺ said:\n\n'
          '"If anyone says: La ilaha illallah, Allah will forbid Hell for him."',
      'reference': 'Sahih al-Bukhari (5827)',
      'arabic': 'لا إله إلا الله',
    },
    {
      'text':
          'Prophet ﷺ said:\n\n'
          '"I ask Allah for forgiveness more than 70 times a day."',
      'reference': 'Sahih al-Bukhari (6307)',
      'arabic': 'أستغفر الله',
    },
    {
      'text':
          'Prophet ﷺ said:\n\n'
          '"Whoever sends 1 durood upon me, Allah sends 10 mercies upon him."',
      'reference': 'Sahih Muslim (408)',
      'arabic': 'اللهم صل على محمد',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        title: const Text(
          'Ahadees',
          style: TextStyle(color: Colors.white, letterSpacing: 5),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: ahadees.length,
          itemBuilder: (context, index) {
            final hadith = ahadees[index];
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(hadith['text']!, style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 12),
                    Text(
                      hadith['arabic']!,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontFamily: 'Kitab', // Use an Arabic font
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      hadith['reference']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
