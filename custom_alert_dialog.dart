import 'package:flutter/material.dart';
import 'package:flutter_crud_firebase/app/utils/app_color.dart';
import 'package:flutter_crud_firebase/app/widgets/custom_input.dart';
import 'package:get/get.dart';

class CustomAlertDialog {
  static showPresenceAlert({
    required String title,
    required String message,
    required void Function() onConfirm,
    required void Function() onCancel,
  }) {
    Get.defaultDialog(
      title: "",
      contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      radius: 8,
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 32, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  message,
                  style: TextStyle(
                    color: AppColor.secondarySoft,
                    height: 150 / 100,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: onCancel,
                    child: Text(
                      "Batal",
                      style: TextStyle(color: AppColor.secondarySoft),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: AppColor.primaryExtraSoft,
                      elevation: 0,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: onConfirm,
                    child: Text("Iya"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primary,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}