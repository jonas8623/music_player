import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image.jpg"), fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.5),
                  const Color(0xFF31314F).withOpacity(1),
                  const Color(0xFF31314F).withOpacity(1),
                ]
            )
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 34.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(CupertinoIcons.back, size: 30.0, color: Colors.white,),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(Icons.more_vert, size: 30.0, color: Colors.white,),
                        ),
                      ],
                    ),
                ),
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: [
                      const SizedBox(height: 40.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tiee",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 10.0,),
                                  Text(
                                    "Singer Name",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            const Icon(Icons.favorite, color: Colors.red, size: 36.0,)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Slider(
                              min: 0,
                              max: 100,
                              value: 40,
                              onChanged: (newValue) {},
                              activeColor: Colors.white,
                              inactiveColor: Colors.white54,
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 26.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "02:30",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "04:30",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.list, color: Colors.white, size: 32.0,),
                          const Icon(CupertinoIcons.backward_end_fill, color: Colors.white, size: 32.0,),
                          Container(
                            alignment: Alignment.center,
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: const Icon(CupertinoIcons.play_arrow_solid, color: Color(0xFF31314F), size: 34.0,),
                          ),
                          const Icon(CupertinoIcons.forward_end_fill, color: Colors.white, size: 32.0,),
                          const Icon(Icons.download, color: Colors.white, size: 32.0,),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
