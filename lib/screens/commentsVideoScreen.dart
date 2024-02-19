import 'package:datatv/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'youtubeplayer.dart';

class CommentsPage extends StatefulWidget {
  @override
  _CommentsPageState createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final List<String> _comments = [];

  String _newCommentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomTheme.mPrimaryColor,
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          const Youtubeplayer(),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: _comments.map((comment) {
              return Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(20),
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 201, 200, 200),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      comment,
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10))
                ],
              );
            }
                //ListTile(title: Text(comment),)
                ).toList(),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          elevation: 10.0,
          color: Color.fromARGB(255, 2, 36, 65),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 43,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (value) => _newCommentText = value,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "nouveau commentaire",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 25,
                  ),
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 13, 13),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _comments.add(_newCommentText);
                        _newCommentText = "";
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
