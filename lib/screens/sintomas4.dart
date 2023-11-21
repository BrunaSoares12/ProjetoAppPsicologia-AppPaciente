import 'package:flutter/material.dart';
import 'package:flutter_app/screens/initial_screen.dart';

void main() {
  runApp(sintomas4());
}

class sintomas4 extends StatelessWidget {
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
          mainAxisAlignment:
              MainAxisAlignment.center, // Mantém o alinhamento ao centro
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 0,
              ),
              child: Text(
                'Obrigado por responder!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20), // Espaçamento entre o texto e o botão
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          InitialScreen()), // Navegar de volta para a tela InitialScreen
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF07A283), // Cor do botão
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30.0), // Raio de arredondamento
                ),
              ),
              child: Text(
                'Voltar à Tela Inicial',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20), // Espaçamento adicional na parte inferior
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF07A283), // Mantém a cor de fundo
        items: [
          BottomNavigationBarItem(
            icon: Icon(null), // Remove o ícone do botão "Voltar"
            label: '', // Remove o rótulo do botão "Voltar"
          ),
          BottomNavigationBarItem(
            icon: Icon(null), // Remove o ícone do botão "Pronto"
            label: '', // Remove o rótulo do botão "Pronto"
          ),
        ],
      ),
    );
  }
}
