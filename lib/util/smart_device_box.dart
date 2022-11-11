import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDevicesBox extends StatelessWidget {
  final String smartDeviceName;
  final String iconPath;
  final bool poverOn;
  void Function(bool)? onChanged;

  SmartDevicesBox(
      {super.key,
      required this.smartDeviceName,
      required this.iconPath,
      required this.poverOn,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: poverOn ? Colors.grey[900] : Colors.grey[200],
            borderRadius: BorderRadius.circular(24)),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //icon
            Image.asset(
              iconPath,
              height: 65,
              color: poverOn ? Colors.white : Colors.black,
            ),
            //device name + svitch
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    smartDeviceName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: poverOn ? Colors.white : Colors.black),
                  ),
                )),
                Transform.rotate(
                    angle: pi / 2,
                    child:
                        CupertinoSwitch(value: poverOn, onChanged: onChanged))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
