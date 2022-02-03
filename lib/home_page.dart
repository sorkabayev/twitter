import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    bool actionFame = false;


  @override
  Widget build(BuildContext context) {

    setState(() {
      actionFame = !actionFame;
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 17, top: 5),
              height: 60,
              width: 60,
              child: const CircleAvatar(
                backgroundImage: AssetImage("asset/image/java.jpg"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 45, top: 10),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 1)),
            )
          ],
        ),
        title: Center(
          child: Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image:
                        AssetImage("asset/image/twitter-logo-2016-png-2.png"),
                  ))),
        ),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 10),
              child: const Icon(
                CupertinoIcons.sparkles,
                color: Colors.blue,
              ))
        ],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: TweetModel.items.length,
        itemBuilder: (BuildContext context, int index) =>
            buildContainer(TweetModel.items[index]),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.house,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.bell,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.mail,
            color: Colors.grey,
          ),
          label: '',
        ),
      ], showSelectedLabels: false),
    );
  }

  Container buildContainer(TweetModel e) => Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 15, left: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: e.actionIcon as Widget),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(e.userImage),
                          ),
                        )
                      ],
                    ),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(e.actionType == "liked"
                            ? "${e.actionUserNameList[0]} and ${e.actionUserNameList[1]} liked"
                            : "${e.actionUserNameList[0]} and ${e.actionUserNameList[1]} retweeted"),
                        ExpansionTile(
                          tilePadding: EdgeInsets.all(0),
                          textColor: Colors.black87,
                          collapsedTextColor: Colors.black87,
                          title: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    e.userName,
                                    style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                                  ),
                                  !e.actionFame ? Icon(CupertinoIcons.checkmark_seal_fill,size: 15,color: Colors.blue,) : SizedBox(height: 0,width: 0,),
                                  Text(
                                    e.nickName,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Text(
                                  "UXR/UX: You can only bring one item to a remote \nisland to assist your research of native \nuse of tools and usability. \nWhat do you bring? #TellMeAboutYou"),
                            ],
                          ),
                          children: [
                            Column(
                              children: [
                                if (e.contentImage != null)
                                  Container(
                                    width: 300,
                                    height: 170,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage(e.contentImage!),
                                            fit: BoxFit.cover)),
                                  ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              CupertinoIcons.chat_bubble,
                              color: Colors.grey,
                            ),
                            Text(e.commentNumber.toString()),
                            const Icon(
                              CupertinoIcons.repeat,
                              color: Colors.grey,
                            ),
                            Text(e.retweetNumber.toString()),
                            const Icon(
                              CupertinoIcons.heart,
                              color: Colors.grey,
                            ),
                            Text(e.likeNumber.toString()),
                            const Icon(
                              CupertinoIcons.share,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 5,
              indent: 5,
            ),
          ],
        ),
      );
}
