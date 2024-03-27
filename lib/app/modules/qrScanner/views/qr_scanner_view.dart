import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/widgets/customeTexrFormField.dart';

import '../../../../utils/myText.dart';
import '../controllers/qr_scanner_controller.dart';


class QrScannerView extends GetView<QrScannerController> {
  TextEditingController c = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            QRView(
              key: controller.qrKey,
              onQRViewCreated: controller.onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: appColor,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: width * 0.7,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: height * 0.1),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(width * 0.04),
                      decoration: BoxDecoration(
                        color: appColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/scanner.svg',
                        height: height * 0.034,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    MyTextQuickSand(
                      text: 'Scan QR Image',
                      color: appColor,
                      fontSize: width * 0.041,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: height * 0.01),
                    MyTextLato(
                      text:
                      "Redeem Your Customer's Reward Points by\nScanning Their QR Image",
                      textAlign: TextAlign.center,
                      fontSize: width * 0.036,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.15, vertical: height * 0.03),
                      width: width,
                      height: height * 0.35,

                      child: Obx(() => Center(
                        child: Container(
                          padding: EdgeInsets.all(width * 0.05),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                            BorderRadius.circular(width * 0.01),
                          ),
                          child: MyTextQuickSand(
                            text: controller.data.value,
                            color: Colors.white,
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )),

                    ),
                    MyTextQuickSand(
                      text: 'Or',
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: height * 0.01),
                    MyTextQuickSand(
                      text: 'Enter 10 Digit QR Code',
                      color: appColor,
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.045),
                      child: MyTextFeild(
                        controller: c,
                        hintText: "Enter 10 digit QR Code",
                        fillColor: Colors.white,
                        textFieldHeight: height * 0.058,
                        suffix: Container(
                          width: width * 0.2,
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(width * 0.012),
                                  topRight: Radius.circular(width * 0.012))),
                          child: Center(
                            child: MyTextQuickSand(
                              text: 'Submit',
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.06, vertical: height * 0.05),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: width * 0.08,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
