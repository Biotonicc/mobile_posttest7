import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915026010_muhammadrezky/user_data.dart';
import 'package:posttest7_1915026010_muhammadrezky/data_game.dart';
import 'package:posttest7_1915026010_muhammadrezky/detail_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 15),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Games for you",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gameList.length,
              itemBuilder: (context, index) {
                Game game = gameList[index];
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(game.assets),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      width: 150,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Get.to(DetailPage(game: game));
                          },
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
      child: Column(
        children: [
          AppBar(
            title: const Text("Menu"),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: const Text(
              "We Want to Know About You",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () => Get.to(const UserData())
          ),
        ],
      ),
    );
  }
}
