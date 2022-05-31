import 'package:flutter/material.dart';

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  _UserDataState createState() => _UserDataState();
}

enum Sex { lakilaki, perempuan }

class _UserDataState extends State<UserData> {

  Sex? _sex = Sex.lakilaki;
  final controllerNama = TextEditingController();
  final controllerKategori = TextEditingController();

  String nama = "";
  String kategori = "";
  String jenis_kelamin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("We Would Like to Know About You"),
      ),
      backgroundColor: Colors.black87,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(40),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: controllerNama,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    hintText: "Cristian Alex",
                    hintStyle: TextStyle(
                      color: Colors.white30,
                    ),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: controllerKategori,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Game Category You Interested",
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    hintText: "RPG, Rhythm, etc.",
                    hintStyle: TextStyle(
                      color: Colors.white30,
                    ),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    "Sex:",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 13),
                  Radio(
                    fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                    activeColor: Colors.green,
                    value: Sex.lakilaki,
                    groupValue: _sex,
                    onChanged: (Sex? value){
                      setState( () {
                        _sex = value;
                      });
                    },
                  ),
                  const Text(
                    "Male",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 13),
                  Radio(
                    fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
                    activeColor: Colors.green,
                    value: Sex.perempuan,
                    groupValue: _sex,
                    onChanged: (Sex? value){
                      setState( () {
                        _sex = value;
                      });
                    },
                  ),
                  const Text(
                    "Female",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState( () {
                    nama = controllerNama.value.text;
                    kategori = controllerKategori.value.text;
                    if(_sex == Sex.lakilaki){
                      jenis_kelamin = "Male";
                    }
                    else{
                      jenis_kelamin = "Female";
                    }
                  });
                },
                child: const Text(
                  "Submit",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your name is: $nama\nGame Category you interested: $kategori\nYour sex: $jenis_kelamin",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
