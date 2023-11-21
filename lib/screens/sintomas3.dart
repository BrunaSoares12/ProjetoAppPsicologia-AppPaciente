import 'package:flutter/material.dart';
import 'package:flutter_app/screens/sintomas2.dart';
import 'package:flutter_app/screens/sintomas4.dart';

void main() {
  runApp(sintomas3());
}

class sintomas3 extends StatelessWidget {
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
                        imagePath:
                            'assets/img/falarempublico.png', // Substitua pelo caminho da sua imagem
                        label: 'Medo de falar em público',
                        color: Colors.green, // Cor do botão
                        onTap: () {
                          // Ação do botão
                        },
                      ),
                      SizedBox(height: 25),
                      ContainerButton(
                        imagePath:
                            'assets/img/caderno.png', // Substitua pelo caminho da sua imagem
                        label: 'Dificuldade de aprendizagem',
                        color: Colors.orange, // Cor do botão
                        onTap: () {
                          // Ação do botão
                        },
                      )
                    ],
                  ),
                  SizedBox(width: 20), // Espaçamento horizontal
                  Column(
                    children: <Widget>[
                      SizedBox(height: 30),
                      ContainerButton(
                        imagePath:
                            'assets/img/paranoia.png', // Substitua pelo caminho da sua imagem
                        label: 'Pensamentos ruins e repetitivos',
                        color: Colors.red, // Cor do botão
                        onTap: () {
                          // Ação do botão
                        },
                      ),
                      SizedBox(height: 25),
                      ContainerButton(
                        imagePath:
                            'assets/img/confuso.png', // Substitua pelo caminho da sua imagem
                        label: 'outro(s)',
                        color: Colors.blue, // Cor do botão
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
            backgroundColor: Color(0xFF07A283), // Definir a cor de fundo
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back),
                label: 'Voltar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check),
                label: 'Pronto',
              ),
            ],
            onTap: (int index) {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sintomas2()),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sintomas4()),
                );
              }
            }));
  }
}

class ContainerButton extends StatelessWidget {
  final String imagePath; // Caminho para a imagem
  final String label;
  final Function onTap;
  final Color color; // Adicione a propriedade de cor

  ContainerButton({
    required this.imagePath, // Receba o caminho para a imagem como argumento
    required this.label,
    required this.onTap,
    required this.color, // Passe a cor como argumento
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
              color: color, // Use a cor passada como argumento
              borderRadius: BorderRadius.circular(75),
            ),
            child: Image.asset(
              imagePath, // Use o caminho da imagem
              width: 80, // Largura da imagem
              height: 80, // Altura da imagem
              color: Colors.white, // Cor da imagem (pode ser alterada)
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
