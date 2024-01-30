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
        "asset": "assets/images/sarengAngangba.PNG"
      },
      {
        "name": "Thang",
        "itemname": "Chak Thang",
        "asset": "assets/images/thangMangang.jpg"
      },
      {
        "name": "Shing",
        "itemname": "Sayee",
        "asset": "assets/images/redLotus.jpg"
      },
      {"name": "Ta", "itemname": "NA", "asset": "assets/images/redLotus.jpg"},
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
      {"name": "Lei", "itemname": "Melei", "asset": ""},
      {"name": "Hei", "itemname": "Pineapple", "asset": ""},
      {"name": "Nga", "itemname": "Sareng Angouba", "asset": ""},
      {
        "name": "Thang",
        "itemname": "Tondum Thang",
        "asset": "assets/images/thangLuwang.jpg"
      },
      {"name": "Shing", "itemname": "Heikru", "asset": ""},
      {"name": "Ta", "itemname": "NA", "asset": ""},
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
      {"name": "Lei", "itemname": "Leishang", "asset": ""},
      {"name": "Hei", "itemname": "Heibong", "asset": ""},
      {"name": "Nga", "itemname": "Sareng Amuba", "asset": ""},
      {
        "name": "Thang",
        "itemname": "Tonkak Thang",
        "asset": "assets/images/thangKhuman.jpg"
      },
      {"name": "Shing", "itemname": "Chakhong", "asset": ""},
      {"name": "Ta", "itemname": "NA", "asset": ""},
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
      {"name": "Lei", "itemname": "Tharo Angouba", "asset": ""},
      {"name": "Hei", "itemname": "Heibong", "asset": ""},
      {"name": "Nga", "itemname": "Sareng Angouba", "asset": ""},
      {
        "name": "Thang",
        "itemname": "Pukak Thang",
        "asset": "assets/images/thangAngom.jpg"
      },
      {"name": "Shing", "itemname": "NA", "asset": ""},
      {"name": "Ta", "itemname": "NA", "asset": ""},
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
      {"name": "Lei", "itemname": "Yerum Lei", "asset": ""},
      {"name": "Hei", "itemname": "Heitup", "asset": ""},
      {"name": "Nga", "itemname": "Sareng Napu", "asset": ""},
      {
        "name": "Thang",
        "itemname": "Yentok Saba Thang",
        "asset": "assets/images/thangMoirang.jpg"
      },
      {"name": "Shing", "itemname": "NA", "asset": ""},
      {"name": "Ta", "itemname": "NA", "asset": ""},
    ]
  },
  {
    "Yek": "Khaba Nganba",
    "color": Colors.teal,
    "YekInfo": [
      {"name": "Machu", "itemname": "Blue", "asset": "assets/images/teal.png"},
      {"name": "Lei", "itemname": "Leishang", "asset": ""},
      {"name": "Hei", "itemname": "Heiba", "asset": ""},
      {
        "name": "Nga",
        "itemname": "Sareng Ngangna Langba",
        "asset": "assets/images/thangKhanganba.jpg"
      },
      {"name": "Thang", "itemname": "Chinaiba Thang", "asset": ""},
      {"name": "Shing", "itemname": "NA", "asset": ""},
      {"name": "Ta", "itemname": "NA", "asset": ""},
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
      {"name": "Lei", "itemname": "Leishang", "asset": ""},
      {"name": "Hei", "itemname": "Hei Manam Naiba", "asset": ""},
      {"name": "Nga", "itemname": "Sareng Sangna Langba", "asset": ""},
      {
        "name": "Thang",
        "itemname": "Khunthong Thang",
        "asset": "assets/images/thangSarangLeishangthem.jpg"
      },
      {"name": "Shing", "itemname": "NA", "asset": ""},
      {"name": "Ta", "itemname": "NA", "asset": ""},
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
