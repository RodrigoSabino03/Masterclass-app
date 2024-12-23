import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String Title;
  final String Description;
  final int Activities;


  const CardWidget({
    super.key, 
    required int index,
    required this.Title,
    required this.Description,
    required this.Activities,
    
    });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 10, top: 10),
        height: 200,
        width: 380,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.rocket_launch_rounded),
                    Text(widget.Title),
                  ],
                ),
                Text('Atividades: ${widget.Activities}'),
              ],
            ),
            Text(widget.Description),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 4,
                  children: [
                    Icon(Icons.rocket_launch_rounded),
                    Text("Acessar código fonte"),
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Text("Ver Mais"))
              ],
            ),
          ],
        ));
  }
}
