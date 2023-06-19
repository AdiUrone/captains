import 'package:flutter/material.dart';
import 'package:captains/list.dart';
class WT20 extends StatefulWidget {
  const WT20({Key? key}) : super(key: key);

  @override
  State<WT20> createState() => _HomeState();
}

class _HomeState extends State<WT20> {
  List<Captain> list = [
    Captain(captain: 'Meg Lanning', country: 'Australia'),
    Captain(captain: 'Harmanpreet Kaur', country: 'India'),
    Captain(captain: 'Heather Knight', country: 'England'),
    Captain(captain: 'Sophie Devine', country: 'New Zealand'),
    Captain(captain: 'Nida Dar', country: 'Pakistan'),
    Captain(captain: 'Chamari Athapaththu', country: 'Sri Lanka'),
    Captain(captain: 'Nigar Sultana', country: 'Bangladesh'),
    Captain(captain: 'Hayley Matthews', country: 'West Indies'),
    Captain(captain: 'Sune Luus', country: 'South Africa'),
    Captain(captain: 'Laura Delany', country: 'Ireland'),
    Captain(captain: 'Kathryn Bryce', country: 'Scotland')
  ];

  Widget capTemplate(Captain cap){
    return Card(
      margin: const EdgeInsets.fromLTRB(12.0,12.0,12.0,0.0),
      color: Colors.orange,
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
        title: const Text(" T20 Cricket Captains (Women's)", style: TextStyle(fontSize: 10),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 25.0,
      ),
      body: Column(
        children: list.map((captains) => capTemplate(captains)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/wipl');
        },
        backgroundColor: Colors.cyan[600],
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}