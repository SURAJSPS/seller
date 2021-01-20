import 'package:flutter/material.dart';
import 'package:new1/bottom_pages/store_qr_code.dart';

import 'delivery_charge.dart';
import 'discount_coupon.dart';
import 'marketing_designs_page.dart';

class BottomMarketingPage extends StatefulWidget {
  @override
  _BottomMarketingPageState createState() => _BottomMarketingPageState();
}

class _BottomMarketingPageState extends State<BottomMarketingPage> {
  bool isActive = true;
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
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarketingDesigns(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Discount Coupons'),
              leading: Icon(Icons.account_balance_wallet_outlined),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DiscountCoupon(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Store QR Code'),
              leading: Icon(Icons.qr_code),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoreQRCode(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Delivery Charges'),
              leading: Icon(Icons.delivery_dining),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DeliveryCharges(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Column(
                children: [
                  SwitchListTile(
                    title: Text(
                      'WhatsApp Chat Support',
                      style: TextStyle(),
                    ),
                    value: isActive,
                    activeColor: Colors.blue.withOpacity(.5),
                    inactiveTrackColor: Colors.grey,
                    onChanged: (bool value) {
                      setState(() {
                        isActive = value;
                      });
                      if (value == true) {
                        final snackBar = SnackBar(
                          content: Text(
                            'WhatsApp Support is ON now!',
                          ),
                          duration: Duration(seconds: 2),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      } else {
                        final snackBar = SnackBar(
                          content: Text('WhatsApp Support is OFF now!'),
                          duration: Duration(seconds: 2),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
