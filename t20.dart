import 'package:flutter/material.dart';
import 'package:captains/list.dart';
class T20 extends StatefulWidget {
  const T20({Key? key}) : super(key: key);

  @override
  State<T20> createState() => _HomeState();
}

class _HomeState extends State<T20> {
  List<Captain> list = [
    Captain(captain: 'Not Announced', country: 'Australia'),
    Captain(captain: 'Rohit Sharma', country: 'India'),
    Captain(captain: 'Jos Buttler', country: 'England'),
    Captain(captain: 'Kane Williamson', country: 'New Zealand'),
    Captain(captain: 'Babar Azam', country: 'Pakistan'),
    Captain(captain: 'Dasun Shanaka', country: 'Sri Lanka'),
    Captain(captain: 'Shakib Al Hasan', country: 'Bangladesh'),
    Captain(captain: 'Rovman Powell', country: 'West Indies'),
    Captain(captain: 'Aiden Markram', country: 'South Africa'),
    Captain(captain: 'Andrew Balbirnie', country: 'Ireland'),
    Captain(captain: 'Craig Ervine', country: 'Zimbabwe'),
    Captain(captain: 'Rashid Khan', country: 'Afghanistan')
  ];

  Widget capTemplate(Captain cap){
    return Card(
      margin: const EdgeInsets.fromLTRB(12.0,12.0,12.0,0.0),
      color: Colors.redAccent,
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
        title: const Text(" T20 Cricket Captains (Men's)", style: TextStyle(fontSize: 10),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 25.0,
      ),
      body: Column(
        children: list.map((captains) => capTemplate(captains)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/ipl');
        },
        backgroundColor: Colors.cyan[600],
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}