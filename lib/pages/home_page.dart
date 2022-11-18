import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xFF303151).withOpacity(0.6),
                const Color(0xFF303151).withOpacity(0.9),
              ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.sort_rounded,
                                      color: Color(0xFF899CCF),
                                      size: 30,
                                  ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Color(0xFF899CCF),
                                  size: 30,
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Text(
                            "Ola sr(a)",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1
                            ),
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          "O que você deseja ouvir?",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 16, right: 20, bottom: 20),
                          child: Container(
                            height: 50,
                            width: 400,
                            decoration: BoxDecoration(
                              color: const Color(0xFF31314F),
                              borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 16),
                                  height: 50,
                                  width: 200,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: const TextStyle(color: Colors.white,),
                                      hintText: "Procure sua musica",
                                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5),),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Icon(Icons.search, color: Colors.white.withOpacity(0.5),),
                                )
                              ],
                            ),
                          ),
                      ),
                      const TabBar(
                          isScrollable: true,
                          labelStyle: TextStyle(fontSize: 16),
                          indicator: BoxDecoration(border: Border(bottom: BorderSide(width: 3, color: Color(0xFF899CCF),))),
                          tabs: [
                            Tab(text: "Musicas",),
                            Tab(text: "Playlist",),
                            Tab(text: "Favoritas",),
                            Tab(text: "Novas",),
                            Tab(text: "Coleçōes",),
                            Tab(text: "Trending",),
                          ]
                      ),
                      Flexible(
                          flex: 1,
                          child: TabBarView(
                              children: [
                                const MusicListWidget(),
                                PlayListWidget(),
                                const MusicListWidget(),
                                const MusicListWidget(),
                                const MusicListWidget(),
                                const MusicListWidget(),
                              ]
                          )
                      )
                    ],
                  ),
              )
          ),
        ),
      ),
    );
  }
}