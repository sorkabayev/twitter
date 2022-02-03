import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweetModel {
  String? actionType;
  bool actionFame;
  Widget? actionIcon;
  List<String> actionUserNameList ;
  String userImage;
  String userName;
  String nickName;
  String tweetTime;
  String textContent;
  String? contentImage;
  int commentNumber = 0;
  int retweetNumber = 0;
  int likeNumber = 0;

  TweetModel({
    this.actionType,
    required this.actionFame,
    this.actionIcon,
    required this.actionUserNameList,
    required this.userImage,
    required this.userName,
    required this.nickName,
    required this.tweetTime,
    required this.textContent,
    this.contentImage,
    required this.commentNumber,
    required this.retweetNumber,
    required this.likeNumber,
  });

 static List<TweetModel> items = [
   TweetModel(actionUserNameList: ["Daniel", "Edvads", "Joshua"],userImage: "asset/image/profile_img.jpg",actionType: "liked",actionIcon: Icon(Icons.favorite,size: 16,color: Colors.grey,), userName: "Martha Crig", nickName: "@Craig Love", tweetTime: "12 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 26, retweetNumber: 10, likeNumber: 50, actionFame: false),
   TweetModel(contentImage: "asset/contend/trinh-minh-th-h4cM5JQmxoQ-unsplash.jpg" ,actionUserNameList: ["maldova", "Edvads", "Joshua"],userImage: "asset/image/user_img_0.jpg", actionType: "retweeted",actionIcon: Icon(Icons.repeat,size: 16,color: Colors.grey,),userName: "Maximilian", nickName: "@MaxiJacobs", tweetTime: "5 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 30, retweetNumber: 10, likeNumber: 50, actionFame: true),
   TweetModel( actionUserNameList: ["Nukir", "Laid", "Dsadc"],userImage: "asset/image/user_img_1.jpg", actionType: "liked",actionIcon: Icon(Icons.favorite,size: 16,color: Colors.grey,),userName: "Tabaitha PoTter", nickName: "@Potter", tweetTime: "1 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 26, retweetNumber: 10, likeNumber: 33, actionFame: false),
   TweetModel(contentImage: "asset/contend/katie-azi-W61itDMv2ZA-unsplash.jpg" ,actionUserNameList: ["Ccvddd", "Cacaad", "Cvdiik"],userImage: "asset/image/user_img_2.jpg", actionType: "retweeted",actionIcon: Icon(Icons.repeat,size: 16,color: Colors.grey,),userName: "Karenne", nickName: "@Craig Karen", tweetTime: "3 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 26, retweetNumber: 10, likeNumber: 50, actionFame: true),
   TweetModel(contentImage: "asset/contend/kharytonova-antonina-SBvupW-_weA-unsplash.jpg" ,actionUserNameList: ["Esadee", "Edvads", "Lokie"],userImage: "asset/image/user_img_3.jpg", actionType: "liked",actionIcon: Icon(Icons.favorite,size: 16,color: Colors.grey,),userName: "Martha Crig", nickName: "@Craig Love", tweetTime: "6 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 26, retweetNumber: 10, likeNumber: 50, actionFame: false),
   TweetModel(contentImage: "asset/contend/krists-luhaers-9CCgEEI-Lw4-unsplash.jpg" ,actionUserNameList: ["Daniel", "Nikolas", "Tonie"],userImage: "asset/image/user_img_4.jpg", actionType: "retweeted",actionIcon: Icon(Icons.repeat,size: 16,color: Colors.grey,),userName: "Martha Crig", nickName: "@Craig Love", tweetTime: "5 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 26, retweetNumber: 10, likeNumber: 50, actionFame: true),
   TweetModel(contentImage: "asset/contend/trinh-minh-th-h4cM5JQmxoQ-unsplash.jpg" ,actionUserNameList: ["Malides", "Buliie", "Nemar"],userImage: "asset/image/user_img_5.jpg", actionType: "liked",actionIcon: Icon(Icons.favorite,size: 16,color: Colors.grey,),userName: "Martha Crig", nickName: "@Craig Love", tweetTime: "7 hour", textContent: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", commentNumber: 3, retweetNumber: 10, likeNumber: 40, actionFame: false),
 ];
}
