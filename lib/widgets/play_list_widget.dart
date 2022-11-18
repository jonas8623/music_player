import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayListWidget extends StatelessWidget {
  PlayListWidget({Key? key}) : super(key: key);

  double size = 60;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i = 1; i < 20; i++)
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 6),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF30314D),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "play_list_page");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("assets/image.jpg", fit: BoxFit.cover, height: size, width: size,),
                    ),
                  ),
                  const SizedBox(width: 26,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Tiee ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400
                          ),
                      ),
                      const SizedBox(height: 6,),
                      Text(
                        "30 sons ",
                        style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 16.0),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(Icons.more_vert, color: Colors.white.withOpacity(0.6), size: 30,)
                ],
              ),
            )
        ],
      ),
    );
  }
}
