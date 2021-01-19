
import 'package:flutter/material.dart';
import 'package:new1/bottom_pages/store_qr_code.dart';

import 'marketing_designs_page.dart';

class BottomMarketingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Marketing Store'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ListTile(
              title: Text('Marketing Designs'),
              leading: Icon(Icons.design_services_outlined),
              trailing: Icon(Icons.arrow_forward_ios_sharp),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MarketingDesigns()),);
            },
            ),
            ListTile(
              title: Text('Store QR Code'),
              leading: Icon(Icons.qr_code),
              trailing: Icon(Icons.arrow_forward_ios_sharp),onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StoreQRCode(),),);
            },
            ),
            ListTile(
              title: Text('Delivery Charges'),
              leading: Icon(Icons.delivery_dining),
              trailing: Icon(Icons.arrow_forward_ios_sharp),onTap: (){
              print('Delivery Charges');
            },
            ),
            ListTile(
              title: Text('WhatsApp Chat Support'),
              leading: Icon(Icons.chat),onTap: (){
              print('WhatsApp Chat Support');
            },
            ),
          ],
        ),
      ),
    );
  }
}
