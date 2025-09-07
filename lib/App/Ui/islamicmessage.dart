import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "Message",
          style: TextStyle(fontSize: 18, letterSpacing: 3),
        ),
      ),
      body: SingleChildScrollView(
        // ✅ Scroll if text is long
        padding: const EdgeInsets.all(16.0),
        child: const Text('''If you like my effort, do Sadaqah Jariyah for me.

🌿 10 Easy Sadaqah Jariyah Tasks (Anytime, Anywhere)

1. Share Quranic Ayah or Hadith Online
➤ Post or forward a powerful ayah or authentic hadith – if someone benefits, you get reward as long as it spreads.

2. Teach a Good Dua or Sunnah
➤ Even teaching someone “SubhanAllah” or how to pray properly can become ongoing charity if they continue to use it.

3. Buy and Place a Water Bottle at a Mosque or Public Place
➤ Water is one of the best forms of Sadaqah.

4. Plant a Tree or Flowering Plant
➤ Anyone (human or animal) that benefits from it gives you continuous reward.

5. Donate a Quran, Islamic Book, or Tasbeeh
➤ Every time someone reads or uses it – reward goes to you.

6. Support Islamic Apps/Websites
➤ Help fund or share a Quran, Hadith, or learning app – your reward multiplies as others use it.

7. Help Someone Learn How to Pray or Read Quran
➤ Even one correction in salah or tajweed can lead to lifelong benefit.

8. Give Someone a Prayer Mat or Hijab
➤ If they use it regularly, you keep earning reward.

9. Write or Record Islamic Content (Short Video, Audio, Notes)
➤ Once online, it can continue spreading good.

10. Sponsor or Share Free Islamic Courses
➤ Share links to free online Islamic learning sites – every learner benefits you.
''', style: TextStyle(fontSize: 16, height: 1.5)),
      ),
    );
  }
}
