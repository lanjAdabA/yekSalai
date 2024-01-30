import 'package:flutter/material.dart';

List<Map<String, dynamic>> dataMap = [
  {
    "Yek": "Mangang",
    "color": Colors.red,
    "YekInfo": [
      {"name": "Machu", "itemname": "Red", "asset": "assets/images/red.png"},
      {
        "name": "Lei",
        "itemname": "Red Lotus",
        "asset": "assets/images/redLotus.jpg"
      },
      {
        "name": "Hei",
        "itemname": "Thamchet",
        "asset": "assets/images/thamchet.PNG"
      },
      {
        "name": "Nga",
        "itemname": "Sareng Angangba",
        "asset": "assets/images/sarengAngangba.jpg"
      },
      {
        "name": "Thang",
        "itemname": "Chak Thang",
        "asset": "assets/images/thangMangang.jpg"
      },
      {
        "name": "Shing",
        "itemname": "Sayee",
        "asset": "assets/images/noData.jpg"
      },
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
  {
    "Yek": "Luwang",
    "color": Colors.white,
    "YekInfo": [
      {
        "name": "Machu",
        "itemname": "White",
        "asset": "assets/images/white.png"
      },
      {"name": "Lei", "itemname": "Melei", "asset": "assets/images/melei.png"},
      {"name": "Hei", "itemname": "Pineapple", "asset": "assets/images/pineapple.jpg"},
      {"name": "Nga", "itemname": "Sareng Angouba", "asset": "assets/images/sarengAngouba.png"},
      {
        "name": "Thang",
        "itemname": "Tondum Thang",
        "asset": "assets/images/thangLuwang.jpg"
      },
      {"name": "Shing", "itemname": "Heikru", "asset": "assets/images/noData.jpg"},
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
  {
    "Yek": "Khuman",
    "color": Colors.black,
    "YekInfo": [
      {
        "name": "Machu",
        "itemname": "Black",
        "asset": "assets/images/black.png"
      },
      {"name": "Lei", "itemname": "Leishang", "asset": "assets/images/Leishang.jpeg"},
      {"name": "Hei", "itemname": "Heibong", "asset": "assets/images/heibong.jpg"},
      {"name": "Nga", "itemname": "Sareng Amuba", "asset": "assets/images/sarengAmuba.png"},
      {
        "name": "Thang",
        "itemname": "Tonkak Thang",
        "asset": "assets/images/thangKhuman.jpg"
      },
      {"name": "Shing", "itemname": "Chakhong", "asset": "assets/images/noData.jpg"},
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
  {
    "Yek": "Angom",
    "color": Colors.yellow,
    "YekInfo": [
      {
        "name": "Machu",
        "itemname": "Yellow",
        "asset": "assets/images/yellow.png"
      },
      {"name": "Lei", "itemname": "Tharo Angouba", "asset": "assets/images/tharoAngouba.png"},
      {"name": "Hei", "itemname": "Heibong", "asset": "assets/images/heibong.jpg"},
      {"name": "Nga", "itemname": "Sareng Angouba", "asset": "assets/images/sarengAngouba.png"},
      {
        "name": "Thang",
        "itemname": "Pukak Thang",
        "asset": "assets/images/thangAngom.jpg"
      },
      {"name": "Shing", "itemname": "NA", "asset": "assets/images/noData.jpg"},
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
  {
    "Yek": "Moirang",
    "color": Colors.brown,
    "YekInfo": [
      {
        "name": "Machu",
        "itemname": "Brown",
        "asset": "assets/images/brown.png"
      },
      {"name": "Lei", "itemname": "Yerum Lei", "asset": "assets/images/yerumlei.png"},
      {"name": "Hei", "itemname": "Heitup", "asset": "assets/images/heitup.png"},
      {"name": "Nga", "itemname": "Sareng Napu", "asset": "assets/images/sarengNapu.png"},
      {
        "name": "Thang",
        "itemname": "Yentok Saba Thang",
        "asset": "assets/images/thangMoirang.jpg"
      },
      {"name": "Shing", "itemname": "NA", "asset": "assets/images/noData.jpg"},
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
  {
    "Yek": "Khaba Nganba",
    "color": Colors.teal,
    "YekInfo": [
      {"name": "Machu", "itemname": "Blue", "asset": "assets/images/teal.png"},
      {"name": "Lei", "itemname": "Leishang", "asset": "assets/images/Leishang.jpeg"},
      {"name": "Hei", "itemname": "Heiba", "asset": "assets/images/noData.jpg"},
      {
        "name": "Nga",
        "itemname": "Sareng Ngangna Langba",
        "asset": "assets/images/sarengAngangba.jpg"
      },
      {"name": "Thang", "itemname": "Chinaiba Thang", "asset": "assets/images/thangKhanganba.jpg"},
      {"name": "Shing", "itemname": "NA", "asset": "assets/images/noData.jpg"},
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
  {
    "Yek": "Sarang Leishangthem",
    "color": Colors.green,
    "YekInfo": [
      {
        "name": "Machu",
        "itemname": "Green",
        "asset": "assets/images/green.png"
      },
      {"name": "Lei", "itemname": "Leishang", "asset": "assets/images/Leishang.jpeg"},
      {"name": "Hei", "itemname": "Hei Manam Naiba", "asset": "assets/images/manamNaiba.png"},
      {"name": "Nga", "itemname": "Sareng Sangna Langba", "asset": "assets/images/sarengArangba.png"},
      {
        "name": "Thang",
        "itemname": "Khunthong Thang",
        "asset": "assets/images/thangSarangLeishangthem.jpg"
      },
      {"name": "Shing", "itemname": "NA", "asset": "assets/images/noData.jpg"},
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/noData.jpg"},
    ]
  },
];

final Map<String, Color> itemColorMap = {
  'Mangang': Colors.red,
  'Luwang': Colors.white,
  'Khuman': Colors.black,
  'Angom': Colors.yellow,
  'Moirang': Colors.brown,
  'Khaba Nganba': Colors.teal,
  'Sarang Leishangthem': Colors.green,
};
final itemColor = [
  Colors.red,
  Colors.white,
  Colors.black,
  Colors.yellow,
  Colors.brown,
  Colors.teal,
  Colors.green,
];
