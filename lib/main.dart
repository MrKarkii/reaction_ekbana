import 'package:design1/widgets/comment_and_share.dart';
import 'package:flutter/material.dart';
import 'fb_reaction_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Challenge With EKBANA"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 150,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200, //280
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Colors.grey.withOpacity(0.3)),
                ),
                Positioned(
                  height: 80, //100
                  top: 110, //180
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SizedBox(
                            width: 45,
                          ),
                          CommentAndShare(
                              icon: Icons.comment_rounded, text: "Comment"),
                          CommentAndShare(
                              icon: Icons.share_rounded, text: "Share"),
                        ],
                      ),
                    ),
                  ),
                ),
                //Like Button
                //laid out and then positioned widget is given to accomodate it
                const FbReaction(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
