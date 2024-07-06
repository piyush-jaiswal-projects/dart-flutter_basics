import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [_searchField(), _categories(), _recommendation()],
      ),
    );
  }

  Container _recommendation() {
    var recommendations = [
      {
        "title": "Honey Pancake",
        "subTitle": "Easy | 30 mins | 180kCal",
        "image": "pancake",
        "action": "View"
      },
      {
        "title": "Honey Pancake",
        "subTitle": "Easy | 30 mins | 180kCal",
        "image": "pancake",
        "action": "View"
      },
      {
        "title": "Honey Pancake",
        "subTitle": "Easy | 30 mins | 180kCal",
        "image": "pancake",
        "action": "View"
      }
    ];

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Recommendation for Diet",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var item in recommendations)
                      _recommendationCard(
                          item['title'] as String,
                          item['subTitle'] as String,
                          item['image'] as String,
                          item['action'] as String)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }

  Container _recommendationCard(
      String title, String subTitle, String image, String action) {
    return Container(
      width: 270,
      height: 290,
      decoration: BoxDecoration(
          color: Color(0xffD8F9D8), borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/pancake.svg", height: 150, width: 150,),
            Text(title, style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            )),
            Text(subTitle),
            ElevatedButton(
              onPressed: () {}, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green
              ),
              child: Text(action))
          ],
        ),
      ),
    );
  }

  Container _categories() {
    var categories = [
      {"name": "Salad", "color": 0xffD8F9D8, "imageName": "filter"},
      {"name": "North Indian", "color": 0xffB8F9D8, "imageName": "filter"},
      {"name": "Chinese", "color": 0xffD8F9C8, "imageName": "filter"},
      {"name": "South Indian", "color": 0xffD8F9E8, "imageName": "filter"}
    ];

    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var category in categories)
                      _categoryCard(
                          category['name'] as String,
                          category['color'] as int,
                          category['imageName'] as String),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Container _categoryCard(String name, int color, String imageName) {
    return Container(
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(15)),
      width: 110,
      height: 110,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/$imageName.svg"),
            Text(
              name,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            hintText: "Search Pancake",
            hintStyle: const TextStyle(color: Colors.deepPurple, fontSize: 14),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset('assets/icons/search.svg'),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/icons/filter.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        "Breakfast",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/icons/left-arrow.svg',
            height: 25,
            width: 25,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/two-dots.svg',
              height: 10,
              width: 10,
            ),
          ),
        )
      ],
    );
  }
}
