import 'package:flutter/material.dart';
import 'package:captains/list.dart';
class WIPL extends StatefulWidget {
  const WIPL({Key? key}) : super(key: key);

  @override
  State<WIPL> createState() => _HomeState();
}

class _HomeState extends State<WIPL> {
  List<Captain> list = [
    Captain(captain: 'Meg Lanning', country: 'Delhi Capitals'),
    Captain(captain: 'Sneh Rana', country: 'Gujarat Giants'),
    Captain(captain: 'Harmanpreet Kaur', country: 'Mumbai Indians'),
    Captain(captain: 'Smriti Mandhana', country: 'Royal Challengers Bangalore'),
    Captain(captain: 'Alyssa Healy', country: 'UP Warriorz')
  ];

  Widget capTemplate(Captain cap){
    return Card(
      margin: const EdgeInsets.fromLTRB(12.0,12.0,12.0,0.0),
      color: Colors.yellowAccent,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              cap.captain,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height:6.0),
            Text(
              cap.country,
              style: const TextStyle(
                fontSize: 10.0,
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text("IPL Captains 2023 (Women's)", style: TextStyle(fontSize: 10),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 25.0,
      ),
      body: Column(
        children: list.map((captains) => capTemplate(captains)).toList(),
      ),
    );
  }
}