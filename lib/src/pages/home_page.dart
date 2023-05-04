import 'package:flutter/material.dart';

import 'directions_page.dart';
import 'maps_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Reader'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_forever),
          ),
        ],
      ),
  
      body: callPage(currentIndex),
      bottomNavigationBar: _createBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.qr_code),
        onPressed: () {
          Navigator.of(context).pushNamed('QRScan');
        },
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }

  Widget _createBottomNavigationBar() {
    return BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: 'Direcciones',
          ),
        ]);
  }
}

  Widget callPage(int paginaActual) {
  switch (paginaActual) {
    case 0:
      return const MapsPage();
    case 1:
      return const DirectionsPage();
    default:
      return const MapsPage();
  }
}

    // _readQRCode() async {
    //   String futureString = '';

    //   try {
    //     // futureString = await ;
    //   }

    //   catch (e) {
    //     futureString = e.toString();
    //   }

    //   print('futureString: $futureString');

    //   if (futureString != null) {
    //     print('TENEMOS INFORMACIÓN!!!!!!!');
    //   }
      
    // }
