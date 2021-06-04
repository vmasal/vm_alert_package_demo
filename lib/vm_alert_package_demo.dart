library vm_alert_package_demo;

import 'package:flutter/material.dart';

class CustomeDialog extends StatelessWidget {
 final String title;
 final String body;
 final IconData topIcon;
 final Color color;
 final String okButton;

  CustomeDialog({
  @required this.title,
  @required this.body, 
  this.topIcon, 
  this.color,
  this.okButton});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0)
      ),
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 210,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
              child: Column(
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(height: 5,),
                  Text(body, style: TextStyle(fontSize: 16),),
                  SizedBox(height: 20,),
                  RaisedButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                    color: color != null ? color : Colors.redAccent,
                    child: Text(okButton != null ? okButton : 'Okay', style: TextStyle(color: Colors.white),) ,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: -60,
            child: CircleAvatar(
              backgroundColor: color != null ? color : Colors.redAccent,
              radius: 60,
              child: Icon(topIcon != null ? topIcon : Icons.assistant_photo, color: Colors.white, size: 50,),
            )
          ),
        ],
      )
    );
  }
}
