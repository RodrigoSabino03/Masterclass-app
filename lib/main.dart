import 'package:flutter/material.dart';
import 'package:masterclass/home_page.dart';
import 'package:masterclass/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Masterclass App',
      theme: ThemeData.dark(),
      home: UserPage(),
    );
  }
}

// TODO: Finalizar tela de usuario

// TODO: implementar rotas -> para navegação entre telas
// TODO: implementar firebase -> para puxar dados dinamicos
// TODO: colocar o componente fixo em todas as telas de Appbar e BottomNavigationBar
// TODO: Criar tela de repositorios
// TODO: Ajustar para design pattern
// TODO: 
// TODO: 
// TODO: 
// TODO: 
// TODO: Limpar essa bosta e componentizar oq tem 



