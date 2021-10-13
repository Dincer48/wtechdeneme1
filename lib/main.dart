import 'package:flutter/material.dart';

void main()=> runApp(WtechDeneme());

class WtechDeneme extends StatelessWidget {
  const WtechDeneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wtech Platform',
      theme: ThemeData(primarySwatch: Colors.lightBlue,backgroundColor: Colors.blueGrey),
      home: WtechHome(),
    );
  }
}
class WtechHome extends StatelessWidget {
  const WtechHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WTECH'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(5),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff00a69c),
              ),
              child: Text('WTECH Header', style: TextStyle(color: Color(0xff4b357d),fontSize: 24),
              ),

            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
                 showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Home'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const <Widget>[
                            Text('This is a Home'),
                            Text('Would you like to approve of this message?'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_sharp),
              title: Text('Trainings'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
