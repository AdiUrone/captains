import 'package:flutter/material.dart';
import 'package:captains/list.dart';
class IPL extends StatefulWidget {
  const IPL({Key? key}) : super(key: key);

  @override
  State<IPL> createState() => _HomeState();
}

class _HomeState extends State<IPL> {
  List<Captain> list = [
    Captain(captain: 'MS Dhoni', country: 'Chennai Super Kings'),
    Captain(captain: 'David Warner', country: 'Delhi Capitals'),
    Captain(captain: 'Hardik Pandya', country: 'Gujarat Titans'),
    Captain(captain: 'KL Rahul', country: 'Lucknow Super Giants'),
    Captain(captain: 'Nitish Rana', country: 'Kolkata Knight Riders'),
    Captain(captain: 'Rohit Sharma', country: 'Mumbai Indians'),
    Captain(captain: 'Shikhar Dhawan', country: 'Punjab Kings'),
    Captain(captain: 'Sanju Samson', country: 'Rajasthan Royals'),
    Captain(captain: 'Faf du Plessis', country: 'Royal Challengers Bangalore'),
    Captain(captain: 'Aiden Markram', country: 'Sunrisers Hyderabad'),
  ];

  Widget capTemplate(Captain cap){
    return Card(
      margin: const EdgeInsets.fromLTRB(12.0,12.0,12.0,0.0),
      color: Colors.amber,
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
                color: Colors.grey,
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
        title: const Text(" IPL Captains 2023 (Men's) ", style: TextStyle(fontSize: 10),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 25.0,
      ),
      body: Column(
        children: list.map((captains) => capTemplate(captains)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/wtest');
        },
        backgroundColor: Colors.cyan[600],
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}