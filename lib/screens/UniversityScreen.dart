import 'package:flutter/material.dart';
import 'package:flutter_app/screens/MinhasConsultasScreen.dart';
import 'package:flutter_app/screens/perfil_paciente.dart';
import 'package:flutter_app/screens/explorar_anhembi_morumbi.dart';
import 'package:flutter_app/screens/explorar_sao_camilo.dart';
import 'package:flutter_app/screens/explorar_cidade_de_sp.dart';
import 'package:flutter_app/screens/explorar_mackenzie.dart';
import 'package:flutter_app/screens/initial_screen.dart';

class UniversityScreen extends StatelessWidget {
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
            "Universidades",
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
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Pesquisar",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  // Conteúdo da lista de universidades (botões UniversityButton)
                  UniversityButton(
                    nome: "Universidade Anhembi Morumbi",
                    clinicaEscola: "Centro Integrado de Saúde (CIS)",
                    endereco: "Local: Rua Doutor Almeida Lima, 1034 - Mooca",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FrmExplorarUniversidadeAnhembiMorumbi(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  UniversityButton(
                    nome: "Centro Universitário São Camilo",
                    clinicaEscola: "Clínica Escola - PROMOVE",
                    endereco: "Local: Rua Eng. Ranulfo Pinheiro de Lima, 200",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FrmExplorarUniversidadeSaoCamilo(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  UniversityButton(
                    nome: "Universidade Cidade de S. Paulo",
                    clinicaEscola: "Clínica-Escola Psicologia UNICID",
                    endereco:
                        "Local: Rua Antônio de Barros, 602 (ao lado do Viaduto Antônio Abdo)",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FrmExplorarUniversidadeCidadeDeSP(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  UniversityButton(
                    nome: "Instituto Presbiteriano Mackenzie",
                    clinicaEscola: "Serviço-Escola de Psicologia Mackenzie",
                    endereco: "Local: Rua Piauí, 181 - Higienópolis",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FrmExplorarUniversidadeMackenzie(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 2,
              color: Color.fromARGB(255, 1, 162, 127),
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              InitialScreen()), // Navegar de volta para a tela InitialScreen
                    );
                  },
                  child: Icon(Icons.home,
                      size: 20, color: Color.fromARGB(255, 1, 162, 127)),
                ),
                TextButton(
                  onPressed: () {
                    // Ação ao clicar no ícone de pesquisa
                  },
                  child: Icon(Icons.search,
                      size: 20, color: Color.fromARGB(255, 1, 162, 127)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MinhasConsultasScreen()),
                    );
                  },
                  child: Icon(Icons.calendar_today,
                      size: 20, color: Color.fromARGB(255, 1, 162, 127)),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class UniversityButton extends StatelessWidget {
  final String nome;
  final String clinicaEscola;
  final String endereco;
  final VoidCallback onPressed;

  UniversityButton({
    this.nome = "",
    this.clinicaEscola = "",
    this.endereco = "",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Colors.white), // Cor de fundo do botão
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12), // Ajuste de padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nome,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 1, 162, 127),
              ),
            ),
            Text(
              clinicaEscola,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Text(
              endereco,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
