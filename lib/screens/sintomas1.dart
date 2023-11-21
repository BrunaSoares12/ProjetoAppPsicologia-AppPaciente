import 'package:flutter/material.dart';
import 'package:flutter_app/screens/sintomas2.dart';
import 'package:flutter_app/screens/horarios_disponiveis_screen.dart';

void main() {
  runApp(Sintomas1());
}

class Sintomas1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, // Cor dos ícones selecionados
          unselectedItemColor: Colors.black, // Cor dos ícones não selecionados
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  top: 70), // Afastar texto da borda superior do celular
              child: Text(
                'Qual(is) dos sintomas a seguir você sentiu nas últimas semanas?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    ContainerButton(
                      imagePath: 'assets/img/irritado.png',
                      label: 'irritação',
                      color: Colors.green,
                      onTap: () {
                        // Ação do botão
                      },
                    ),
                    SizedBox(height: 25),
                    ContainerButton(
                      imagePath: 'assets/img/tristeza.png',
                      label: 'tristeza',
                      color: Colors.orange,
                      onTap: () {
                        // Ação do botão
                      },
                    )
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    SizedBox(height: 30),
                    ContainerButton(
                      imagePath: 'assets/img/entediado.png',
                      label: 'entediado',
                      color: Colors.red,
                      onTap: () {
                        // Ação do botão
                      },
                    ),
                    SizedBox(height: 25),
                    ContainerButton(
                      imagePath: 'assets/img/ansiedade.png',
                      label: 'ansiedade',
                      color: Colors.blue,
                      onTap: () {
                        // Ação do botão
                      },
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF07A283),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Voltar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Próximo',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HorariosDisponiveisScreen()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sintomas2()),
            );
          }
        },
      ),
    );
  }
}

class ContainerButton extends StatelessWidget {
  final String imagePath;
  final String label;
  final Function onTap;
  final Color color;

  ContainerButton({
    required this.imagePath,
    required this.label,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(75),
            ),
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
