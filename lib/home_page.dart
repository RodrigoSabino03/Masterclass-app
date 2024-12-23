import 'package:flutter/material.dart';
import 'package:masterclass/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> modulos = [
    {
      'nome': 'Modulo zero',
      'atividades': 1,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Componentes',
      'atividades': 2,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Animações',
      'atividades': 3,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Miscelânea',
      'atividades': 4,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Design Patterns',
      'atividades': 5,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Design Patterns 2',
      'atividades': 4,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Testes de unidade',
      'atividades': 3,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Gerenciamento de Estado',
      'atividades': 2,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
    {
      'nome': 'Arquitetura',
      'atividades': 1,
      'descrição':
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos'
    },
  ];

  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body:  ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          final modulo = modulos[index];

          return CardWidget(
            index: index, // Passa o índice para o CardWidget
            Title: modulo['nome'], // Passa o nome do módulo
            Description: modulo['descrição'], // Passa a descrição
            Activities: modulo['atividades'], // Passa o número de atividades
          );
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: [
        NavigationDestination(
            icon: Icon(Icons.rocket_launch), label: 'Atividades'),
        NavigationDestination(icon: Icon(Icons.home), label: 'Repositorios'),
        NavigationDestination(
            icon: Icon(Icons.usb_rounded), label: 'Sobre o Dev'),
      ]),
    );
  }
}
