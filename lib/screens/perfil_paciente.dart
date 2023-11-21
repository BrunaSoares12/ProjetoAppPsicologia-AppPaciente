import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/profile_text_field.dart';
import 'package:flutter_app/screens/initial_screen.dart';

void main() {
  runApp(PerfilPaciente());
}

class PerfilPaciente extends StatefulWidget {
  @override
  _PerfilPacienteState createState() => _PerfilPacienteState();
}

class _PerfilPacienteState extends State<PerfilPaciente> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String nome = "";
  String datadeNascimento = "";
  String telefone = "";
  String email = "";
  String endereco = "";
  String genero = "Feminino";
  String novaSenha = "";
  String confirmarSenha = "";

  void updateProfile() {
    if (nome.isNotEmpty &&
        datadeNascimento.isNotEmpty &&
        telefone.isNotEmpty &&
        email.isNotEmpty &&
        endereco.isNotEmpty &&
        genero.isNotEmpty &&
        novaSenha.isNotEmpty &&
        confirmarSenha.isNotEmpty) {
      print("Perfil atualizado com sucesso");
    } else {
      print("Preencha todos os campos.");
    }
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
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: Text(
            "Perfil",
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
              ListTile(
                title: Text("Voltar Tela Inicial"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InitialScreen()));
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                ProfileTextField(
                  label: "Nome e Sobrenome",
                  onChanged: (value) {
                    nome = value;
                  },
                ),
                ProfileTextField(
                  label: "Data de Nascimento",
                  onChanged: (value) {
                    datadeNascimento = value;
                  },
                ),
                ProfileTextField(
                  label: "Telefone",
                  onChanged: (value) {
                    telefone = value;
                  },
                ),
                ProfileTextField(
                  label: "Email",
                  onChanged: (value) {
                    email = value;
                  },
                ),
                ProfileTextField(
                  label: "Endereço",
                  onChanged: (value) {
                    endereco = value;
                  },
                ),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: "Gênero"),
                  value: genero,
                  items: ["Feminino", "Masculino"]
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      genero = value ?? "";
                    });
                  },
                ),
                ProfileTextField(
                  label: "Nova Senha",
                  onChanged: (value) {
                    novaSenha = value;
                  },
                  obscureText: true,
                ),
                ProfileTextField(
                  label: "Confirmar Senha",
                  onChanged: (value) {
                    confirmarSenha = value;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: updateProfile,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 1, 162, 127)),
                    minimumSize: MaterialStateProperty.all(Size(200, 48)),
                  ),
                  child: Text(
                    "Atualizar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
