import 'package:flutter/material.dart';
import 'package:posttest7_1915026010_muhammadrezky/data_game.dart';
import 'package:posttest7_1915026010_muhammadrezky/buy_log.dart';

class DetailPage extends StatelessWidget {
  final Game game;

  const DetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 163,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    game.header,
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(0, 0.5),
                            end: Alignment(0, 0),
                            colors: <Color>[
                          Colors.black38,
                          Colors.black26,
                        ])),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  game.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  game.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                  child: const Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    game.description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Buy"),
        onPressed: () {
          BuyLog().add(game.title, game.price);
        },
      ),
    );
  }
}
