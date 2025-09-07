import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbeeh/App/Constant/appimages.dart';
import 'package:tasbeeh/App/Constant/appstyle.dart';
import 'package:tasbeeh/App/Ui/aboutshirk.dart';
import 'package:tasbeeh/App/Ui/ahadees.dart';
import 'package:tasbeeh/App/Ui/islamicmessage.dart';
import 'package:tasbeeh/App/Ui/pdfviewrr/Quran_e_Majeed.dart';
import 'package:vibration/vibration.dart';
import 'package:video_player/video_player.dart';

class SimpleDigitalTasbih extends StatefulWidget {
  const SimpleDigitalTasbih({super.key});

  @override
  State<SimpleDigitalTasbih> createState() => _SimpleDigitalTasbihState();
}

class _SimpleDigitalTasbihState extends State<SimpleDigitalTasbih> {
  int counter = 0;
  bool bpressed = true;
  bool isvibrate = false;

  List<String> ThemeImages = [
    Appimages.tasbihapp,
    Appimages.bg0,
    Appimages.bg1,
    Appimages.bg2,
  ];
  int currentimage = 0;
  String backgroundImage = Appimages.tasbihapp;

  @override
  void initState() {
    super.initState();
    loadCounter();
  }

  Future<void> playsound() async {
    if (!bpressed) return;
    final player = AudioPlayer();
    player.play(AssetSource("audio/up.mp3"));
    player.onPlayerComplete.listen((event) => player.dispose());
  }

  Future<void> playsounddown() async {
    if (!bpressed) return;
    final player = AudioPlayer();
    await player.play(AssetSource("audio/upss.wav"));
    player.onPlayerComplete.listen((event) => player.dispose());
  }

  Future<void> vibrationonclick() async {
    if (!isvibrate) return;
    if (await Vibration.hasVibrator() ?? false) {
      Vibration.vibrate(duration: 100);
    }
  }

  void loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = prefs.getInt('counter') ?? 0;
    });
  }

  void saveCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', counter);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(height * 0.1),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HadithScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(Appimages.books0),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AboutShirk(),
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(Appimages.nmzz),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(counter.toString(), style: Appstyle.header()),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quran_e_Majeed(),
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(Appimages.Quran_e_Majeed),
                            ),
                          ),
                        ),
                      ),
                      Gap(8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Message()),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(Appimages.messageicon),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() => counter++);
                          playsound();
                          saveCounter();
                          vibrationonclick();
                        },
                        icon: Transform.rotate(
                          angle: 90 * 3.1416 / 180,
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 80,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -2,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.white),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (counter > 0) counter--;
                            });
                            playsounddown();
                            saveCounter();
                            vibrationonclick();
                          },
                          icon: Transform.rotate(
                            angle: -90 * 3.1416 / 180,
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                  height: 50,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () => setState(() => bpressed = !bpressed),
                    icon: Image(
                      image: AssetImage(
                        bpressed ? Appimages.speaker : Appimages.speakeroff,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () => setState(() => isvibrate = !isvibrate),
                    icon: Image(
                      image: AssetImage(
                        isvibrate ? Appimages.vibration : Appimages.vibrationof,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const ContinuousRectangleBorder(),
                      backgroundColor: const Color(0xff18230F),
                    ),
                    onPressed: () {
                      setState(() => counter = 0);
                      saveCounter();
                      vibrationonclick();
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.amber),
                    ),
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      currentimage = (currentimage + 1) % ThemeImages.length;
                      backgroundImage = ThemeImages[currentimage];
                    });
                  },
                  child: const Text(
                    "Theme",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}

// // ✅ Video Dialog Widget
// class VideoDialog extends StatefulWidget {
//   const VideoDialog({super.key});

//   @override
//   State<VideoDialog> createState() => _VideoDialogState();
// }

// class _VideoDialogState extends State<VideoDialog> {
//   // late VideoPlayerController _controller;

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _controller = VideoPlayerController.asset('assets/videos/samplevideo.mp4')
//   //     ..initialize().then((_) {
//   //       setState(() {});
//   //       _controller.play();
//   //     });
//   // }

//   @override
//   void dispose() {
//     // _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
   
   
   
//     return AlertDialog(
//       backgroundColor: Colors.black,
//       contentPadding: EdgeInsets.zero,
//       content:
//           _controller.value.isInitialized
//               ? AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               )
//               : const SizedBox(
//                 height: 200,
//                 child: Center(child: CircularProgressIndicator()),
//               ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             _controller.pause();
//             Navigator.of(context).pop();
//           },
//           child: const Text("Close", style: TextStyle(color: Colors.white)),
//         ),
//       ],
//     );
 
 
 
//   }
// }
