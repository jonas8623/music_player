import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF303151).withOpacity(0.6),
              const Color(0xFF303151).withOpacity(0.9),
            ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(CupertinoIcons.back, color: Color(0xFF889CCF), size: 30,)
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert, color: Color(0xFF889CCF), size: 30,)
                          ),
                        ],
                      ),
                  ),
                  const SizedBox(height: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/image.jpg", width: 300, height: 260, fit: BoxFit.cover,),
                  ),
                  const SizedBox(height: 20,),
                  Text("Tiee", style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 28.0, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 8,),
                  Text("Album", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 18.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Play All", style: TextStyle(color: Color(0xFF30314D), fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(width: 6.0,),
                                Icon(Icons.play_arrow_rounded, color: Color(0xFF30314D), size: 40,)
                              ],
                            ),
                          ),
                        ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 170,
                          height: 55,
                          decoration: BoxDecoration(
                              color: const Color(0xFF30314D),
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Shuffle", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              SizedBox(width: 10.0,),
                              Icon(Icons.shuffle, color: Colors.white, size: 40,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20.0,),
                  for(int i = 1; i < 20; i++)
                    Container(
                      margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                      decoration: BoxDecoration(
                          color: const Color(0xFF30314D),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Text("$i", style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),),
                          const SizedBox(width: 26,),
                          InkWell(
                            onTap: () {},
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
            )
        ),
      ),
    );
  }
}
