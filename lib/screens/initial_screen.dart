import 'package:flutter/material.dart';
import 'package:flutter_app/screens/perfil_paciente.dart';
import 'package:flutter_app/screens/UniversityScreen.dart';
import 'package:flutter_app/screens/MinhasConsultasScreen.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 162, 127),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _openDrawer,
          ),
          title: Text(
            "Tela Inicial",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Perfil Paciente"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PerfilPaciente()));
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Estamos localizando as clínicas disponíveis",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Por favor, aguarde.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 210),
            Divider(
              color: Color.fromARGB(255, 1, 162, 127),
              thickness: 2,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon:
                      Icon(Icons.home, color: Color.fromARGB(255, 1, 162, 127)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search,
                      color: Color.fromARGB(255, 1, 162, 127)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UniversityScreen()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today,
                      color: Color.fromARGB(255, 1, 162, 127)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MinhasConsultasScreen()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
