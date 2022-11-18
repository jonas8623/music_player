import 'package:flutter/material.dart';

class MusicListWidget extends StatelessWidget {
  const MusicListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 16,),
          for(int i = 1; i < 20; i++)
          Container(
            margin: const EdgeInsets.only(top: 16, right: 16, left: 6),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF30314D),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Text("$i", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
                const SizedBox(width: 26,),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "music_page");
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tiee - Questão Familiar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2
                        ),),
                      Row(
                        children: [
                          Text(
                            "Pagode",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16.0,
                            ),),
                          const SizedBox(width: 6,),
                          Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 24.0,
                            ),),
                          const SizedBox(width: 6,),
                          Text(
                            "04:30",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontWeight: FontWeight.w500,
                            ),),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Icon(Icons.play_arrow, size: 26, color: Color(0xFF31314F),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
