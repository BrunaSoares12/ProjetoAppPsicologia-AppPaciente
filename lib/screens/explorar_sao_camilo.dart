import 'package:flutter/material.dart';
import 'package:flutter_app/screens/date_selection_screen.dart';

class FrmExplorarUniversidadeSaoCamilo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF07A283),
        title: Text(
          'Centro Universitário São Camilo',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/img/faculdade2.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Clínica Escola - PROMOVE',
                    style: TextStyle(
                      color: Color(0xFF5E5E5E),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Local: Rua Eng. Ranulfo Pinheiro de Lima, 200',
                    style: TextStyle(
                      color: Color(0xFF5E5E5E),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'São Paulo',
                    style: TextStyle(
                      color: Color(0xFF5E5E5E),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Contato: (11) 0000-0000',
                    style: TextStyle(
                      color: Color(0xFF5E5E5E),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Serviços',
                    style: TextStyle(
                      color: Color(0xFF07A283),
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  ServiceItem("Triagem Psicológica", "Gratuito", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DateSelectionScreen()),
                    );
                  }),
                  SizedBox(height: 10), // Adiciona um espaçamento vertical
                  ServiceItem(
                      "Avaliação Psicológica/Psiodiagnóstico", "R\$ 10,00", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DateSelectionScreen()),
                    );
                  }),
                  SizedBox(height: 10), // Adiciona um espaçamento vertical
                  ServiceItem("Psicoterapia Individual", "R\$ 10,00", () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DateSelectionScreen()),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String title;
  final String price;
  final VoidCallback onPressed;

  ServiceItem(this.title, this.price, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF00786C)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30.0), // Defina o raio desejado
              ),
            ),
          ),
          child: Text(
            "Agendar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
