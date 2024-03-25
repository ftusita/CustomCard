//Importando os pacotes necessários

import 'package:flutter/material.dart';
import 'package:flutter_25_03_24/custom_card.dart';



// Função principal que é o ponto de entrada da aplicação Flutter
// Inicialização da aplicação, passando uma instância de MeuApp como widget raiz runApp(const MeuApp());

void main() {
  runApp(const MeuApp());
}

// Classe MeuApp é definida como subclasse de StatelessWidget, ou seja, não possui estado mutável interno 
// Construtor MeuApp, que recebe um parâmetro nomeado key, mas não o utiliza dentro da classe

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

// Método build, sobrescrito para construir a interface de usuário da aplicação
// Retorna um MaterialApp, o widget raiz para uma aplicação Flutter

@override 
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(     // Definição da tela inicial da aplicação como um Scaffold
      backgroundColor: Colors.teal,
    body: Column(       // Corpo do Scaffold, contém um Column para organizar os widgets verticalmente
      mainAxisAlignment: MainAxisAlignment.center, // Alinhamento principal da coluna
      children: [       // Lista de widgets filhos da coluna
        CircleAvatar(   // Widget CircleAvatar para exibir uma imagem de perfil
          radius: 60.0, 
          backgroundImage: AssetImage('images/profile.jpg'),
    ),
    Text(               // Widget Text para exibir o nome do usuário
      'Felipe Tusita',
       style: TextStyle(
        fontFamily: 'Pacifico', 
        color: Colors.white, 
        fontSize: 40, 
        fontWeight: FontWeight.bold,
        ),
        ),
    Text(              // Widget Text para exibir a ocupação do usuário
      'Flutter Developer', 
      style: TextStyle(
        fontSize: 40,
        color: Colors.teal,
        fontWeight: FontWeight.bold,
      ),
      ),
      SizedBox(        // Widget SizedBox com um Divider para criar uma linha horizontal entre os elementos
        height: 20,
        width: 150 ,
        child: Divider(
          color: Colors.teal.shade100,
        ),
      ),
      CustomCard(text: '+55 11 984758434', icon: Icons.phone),   // Widgets CustomCard para exibir informações de contato
      CustomCard(text: 'fetusita@gmail.com', icon: Icons.email),
    ],
    ),
    ),
    );
}

}
