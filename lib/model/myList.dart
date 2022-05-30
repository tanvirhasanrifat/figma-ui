import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';


class CloudStorageInfo {
  final String? svgSrc,
      title,
      totalStorage,
      img,
      type,
      delay,
      details2,
      email,
      devide,
      taskName,
      value,
      situation;
  final int? id, percentage;
  final Color? color;
  final IconData? icon;
  final String? details;
  final String? time;

  CloudStorageInfo({
    this.value,
    this.situation,
    this.taskName,
    this.details,
    this.email,
    this.delay,
    this.details2,
    this.time,
    this.icon,
    this.type,
    this.img,
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.id,
    this.percentage,
    this.color,
    this.devide,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
      value: '5',
      situation: 'Ongoing',
      devide: '20/20',
      delay: "4h",
      taskName: "Research Analysis",
      email: "hasanrifat789@gmail.com",
      details:
      "Conversely, many high-end blogs in the marketing space consistently ",
      type: "Urgent",
      time: "3.03 pm",
      title: "Limon bhai",
      details2:
      "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      id: 1328,
      svgSrc: "assets/icons/Documents.svg",
      totalStorage: "2000",
      color: primaryColor,
      percentage: 100,
      icon: Icons.file_present,
      img:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa5OBcDHB7bXgsunvlgdudK67mlk6BTeyt8sHFm4PXtEcULfjHTlj3SL5t2SnErfHR_2s&usqp=CAU"),
  CloudStorageInfo(
      value: '7',
      situation: 'Under Review',
      devide: '10/20',
      type: "In Review",
      taskName: "Research Analysis",
      email: "pranto@gmail.com",
      details:
      "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics.",
      time: "3.20 pm",
      title: "Tanvir",
      id: 56,
      delay: "2h",
      details2:
      "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      svgSrc: "assets/icons/google_drive.svg",
      totalStorage: "200",
      color: Color(0xFFFFA113),
      percentage: 50,
      icon: Icons.drive_folder_upload,
      img:
      "https://thumbs.dreamstime.com/b/male-avatar-icon-flat-style-male-user-icon-cartoon-man-avatar-hipster-vector-stock-91462914.jpg"),
  CloudStorageInfo(
      value: '4',
      situation: 'Uncommon',
      devide: '20/20',
      time: "6.13 pm",
      taskName: "Research Analysis",
      icon: Icons.zoom_out_map,
      details:
      "examine definitions for terms used throughout a post. In this case, since I’m talking about long-form and short-form content, we should define what we mean by that.",
      title: "Hasan",
      delay: "4h",
      id: 132,
      type: "In Progress",
      email: "hasanrifat789@gmail.com",
      details2:
      "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      svgSrc: "assets/icons/one_drive.svg",
      totalStorage: "420",
      color: Color(0xFFA4CDFF),
      percentage: 100,
      img:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvWNvxqwJyqQtJQLKuWSGDQaxDG0JQ1LHbV_ffZ1qdFc85UtnfLu1D2IbsKPdIqnUtyE8&usqp=CAU"),
  CloudStorageInfo(
      value: '6',
      situation: 'Completed',
      devide: '3/20',
      time: "3.03 pm",
      taskName: "Research Analysis",
      details:
      "Honestly, a short blog post with a handful of deep videos embedded in them and an infographic to round it up sounds like long-form content to me, even if the actual word count is lower.",
      icon: Icons.wifi_tethering,
      title: "Rifat",
      id: 15,
      delay: "4h",
      details2:
      "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      type: "Open",
      svgSrc: "assets/icons/drop_box.svg",
      totalStorage: "7.3GB",
      email: "hasanrifat789@gmail.com",
      color: Color(0xFF007EE5),
      percentage: 20,
      img:
      "https://st3.depositphotos.com/14846838/19463/v/450/depositphotos_194638886-stock-illustration-flat-icon-man-suit.jpg"),
  CloudStorageInfo(
      value: '9',
      situation: 'Almost',
      devide: '3/20',
      time: "13.60 pm",
      taskName: "Research Analysis",
      details: "What is The Point of Diminishing Returns with Blog Word Count?",
      delay: "4h",
      icon: Icons.wifi_tethering,
      title: "Tanvir Hasan Rifat",
      id: 15,
      details2:
      "words for just about everything I write and often try to exceed that. Some of my posts are over 4,000 words on deeper and more competitive topics",
      type: "Approve",
      svgSrc: "assets/icons/drop_box.svg",
      totalStorage: "7.3GB",
      email: "hasanrifat789@gmail.com",
      color: Color(0xFF007EE5),
      percentage: 20,
      img:
      "https://cdn1.vectorstock.com/i/1000x1000/29/65/joyed-businessman-or-clerk-flat-icon-vector-21272965.jpg"),
];

List<MaterialColor> colorItems = [
  Colors.green,
  Colors.deepOrange,
  Colors.red,
  Colors.yellow
];

List<Color> clrList = [
  BrandColors.colorPurple,
  BrandColors.colorGreen,
  BrandColors.colorTealAccent,
  BrandColors.colorYellow,
];
