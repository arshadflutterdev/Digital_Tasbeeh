import 'package:flutter/material.dart';

class AboutShirk extends StatefulWidget {
  const AboutShirk({super.key});

  @override
  State<AboutShirk> createState() => _AboutShirkState();
}

class _AboutShirkState extends State<AboutShirk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Shirk?',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black45,
                  letterSpacing: 4,
                ),
              ),
              Text(
                '''Shirk is not just a historical problem — it is widespread in the modern Muslim world through culture, customs, and confusion.

📘 Understanding Shirk in Islam
The Greatest Sin in the Sight of Allah

🕌 Chapter 1: What is Shirk?
Definition:
Shirk (شرك) in Arabic means “association” or “partnership.” In Islamic theology, it refers to associating partners with Allah — attributing divine qualities to someone or something other than Him.

“Indeed, Allah does not forgive that partners should be set up with Him, but He forgives anything else to whom He wills…” (Qur’an 4:48)

Shirk is considered the gravest sin in Islam — the only unforgivable sin if one dies without repentance.

🔥 Chapter 2: Types of Shirk
1. Shirk al-Akbar (Major Shirk)
This takes a person outside the fold of Islam. It includes:
- Worshiping idols or graves
- Calling upon saints or jinns
- Believing others have power like Allah
- Attributing Allah’s names or actions to others

📖 Example: Praying to a dead person for help.

2. Shirk al-Asghar (Minor Shirk)
This does not take one out of Islam but ruins one’s deeds and is a serious sin. Examples include:
- Riya’ (showing off) in worship
- “The thing I fear most for you is minor shirk: showing off.” — (Hadith)
- Saying: “Had it not been for this doctor, I would have died” — without recognizing Allah’s will.

3. Shirk al-Khafi (Hidden Shirk)
A very subtle form — even prophets feared it. It includes:
- Trusting people or things more than Allah
- Loving or fearing someone more than Allah

“Do you see him who takes his desires as his god?” (Qur’an 45:23)

📖 Chapter 3: Quranic Condemnation of Shirk
Surah Al-Ikhlas (112) clearly affirms Tawheed (Oneness):
“He is Allah, the One… and none is like Him.”

Surah Luqman 31:13:
“O my son, do not associate anything with Allah. Indeed, shirk is a great injustice.”

Surah Al-Ma’idah 5:72:
“Whoever associates partners with Allah, Allah has forbidden Paradise for him…”

🧭 Chapter 4: Examples of Shirk Today
Some modern examples of shirk include:
- Seeking help from saints, graves, or amulets (taweez)
- Astrology: Believing stars determine your fate
- Superstitions: Thinking certain actions bring divine punishment
- Swearing by other than Allah: (“I swear on my mother’s life!”)
- Horoscopes, palm reading, or fortune-telling

🚫 Chapter 5: The Dangers of Shirk
❌ Cancels all good deeds
“If you commit shirk, all your deeds will be nullified.” (Qur’an 39:65)

❌ Leads to Hellfire forever if not repented
“Whoever dies upon shirk will enter Hell.”

❌ Removes protection of Allah
Shirk breaks the bond between the Creator and His slave.

🌈 Chapter 6: How to Avoid Shirk
Understand Tawheed (Oneness of Allah):
- Tawheed ar-Rububiyyah: Belief in Allah as the sole Creator
- Tawheed al-Uluhiyyah: Worship belongs only to Him
- Tawheed al-Asma’ wa Sifat: His names and attributes are unique

Avoid bid’ah (innovations)
Many acts of shirk start from innovations in worship.

Educate yourself and others
Read Qur’an, Hadith, and learn from scholars of Tawheed.

Avoid places and people of shirk
Don’t attend gatherings where saints are worshipped or where magic is practiced.

Say the du’a of protection from shirk:
“Allahumma inni a‘udhu bika an ushrika bika wa ana a‘lam, wa astaghfiruka lima la a‘lam.”
(O Allah, I seek refuge in You from committing shirk knowingly, and I seek Your forgiveness for what I don’t know.)

💡 Chapter 7: Repenting from Shirk
“Say to those who disbelieve: if they stop (shirk), their past will be forgiven.” (Qur’an 8:38)

Allah forgives ALL sins, including shirk — if one sincerely repents before death.

Steps of repentance:
- Stop the act
- Feel deep regret
- Make firm intention to never return
- Learn and replace it with correct beliefs

💬 Chapter 8: Common Misconceptions
❌ "I just wear a taweez for protection, not worship."
➡ Even if you don’t worship it, if you believe it has power, it’s shirk.

❌ "I only go to the grave to ask the saint to ask Allah."
➡ This is shirk in du’a, as the Prophet ﷺ forbade asking the dead.

❌ "What's wrong with horoscopes? It’s just fun."
➡ Believing the unseen without proof is shirk in knowledge — only Allah knows the future.

🛡 Chapter 9: The Protection of Tawheed
The Prophet ﷺ said:
“Whoever dies without associating anything with Allah will enter Paradise.” (Sahih Muslim)

Living a life of pure Tawheed protects one in:
- This world (from worry, magic, jinn)
- The grave (gives peace)
- The Hereafter (guarantees Paradise)

🌟 The best safeguard is to:
- Stay attached to the Qur’an and Sunnah
- Understand the Names and Attributes of Allah
- Seek guidance daily

“And worship Allah and do not associate anything with Him.” (Qur’an 4:36)
''',
                style: const TextStyle(fontSize: 16, height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
