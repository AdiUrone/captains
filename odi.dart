import 'package:flutter/material.dart';
import 'package:captains/list.dart';
class ODI extends StatefulWidget {
  const ODI({Key? key}) : super(key: key);

  @override
  State<ODI> createState() => _HomeState();
}

class _HomeState extends State<ODI> {
  List<Captain> list = [
    Captain(captain: 'Pat Cummins', country: 'Australia'),
    Captain(captain: 'Rohit Sharma', country: 'India'),
    Captain(captain: 'Jos Buttler', country: 'England'),
    Captain(captain: 'Kane Williamson', country: 'New Zealand'),
    Captain(captain: 'Babar Azam', country: 'Pakistan'),
    Captain(captain: 'Dasun Shanaka', country: 'Sri Lanka'),
    Captain(captain: 'Tamim Iqbal', country: 'Bangladesh'),
    Captain(captain: 'Shai Hope', country: 'West Indies'),
    Captain(captain: 'Temba Bavuma', country: 'South Africa'),
    Captain(captain: 'Andrew Balbirnie', country: 'Ireland'),
    Captain(captain: 'Craig Ervine', country: 'Zimbabwe'),
    Captain(captain: 'Hashmatullah Shahidi', country: 'Afghanistan')
  ];

  Widget capTemplate(Captain cap){
    return Card(
      margin: const EdgeInsets.fromLTRB(12.0,12.0,12.0,0.0),
      color: Colors.lightBlueAccent,
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
        title: const Text(" ODI Cricket Captains (Men's)", style: TextStyle(fontSize: 10),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 25.0,
      ),
      body: Column(
        children: list.map((captains) => capTemplate(captains)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/t20');
        },
        backgroundColor: Colors.cyan[600],
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}