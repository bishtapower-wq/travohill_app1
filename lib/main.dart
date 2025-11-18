import 'package:flutter/material.dart';
void main() => runApp(TravohillApp());

class TravohillApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travohill',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFD4A017),
        scaffoldBackgroundColor: Color(0xFF061018),
        appBarTheme: AppBarTheme(color: Color(0xFF0b1f27)),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  Widget card(String title, String subtitle, String price) {
    return Card(
      color: Color(0xFF0f2b33),
      margin: EdgeInsets.symmetric(vertical:8, horizontal:12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.white70)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price, style: TextStyle(color: Color(0xFFD4A017), fontWeight: FontWeight.w800)),
            SizedBox(height:6),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFD4A017)),
              onPressed: () {},
              child: Text('Book', style: TextStyle(color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children:[
          Icon(Icons.terrain, color: Color(0xFFD4A017), size: 28),
          SizedBox(width:10),
          Text('Travohill')
        ]),
      ),
      body: ListView(
        children: [
          SizedBox(height:12),
          Padding(padding: EdgeInsets.symmetric(horizontal:12), child: Text('Taxi / Sharing', style: TextStyle(color: Colors.white70, fontSize:18, fontWeight: FontWeight.w700))),
          card('Almora → Ranikhet', 'Innova • Shared • 4.8★', '₹749'),
          card('Haldwani → Badrinath', 'Toyota • Private • 4.6★', '₹1299'),
          SizedBox(height:8),
          Padding(padding: EdgeInsets.symmetric(horizontal:12), child: Text('Hotels & Packages', style: TextStyle(color: Colors.white70, fontSize:18, fontWeight: FontWeight.w700))),
          card('The Pine Manor — Ranikhet', 'Boutique Hotel', '₹3999'),
          card('Ranikhet Luxury Weekend', '3 Days • Private transfer', '₹8999'),
          SizedBox(height:24),
        ],
      ),
    );
  }
}
