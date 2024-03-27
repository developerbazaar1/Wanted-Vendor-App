import 'package:flutter/material.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';

class CustomPlanListView  extends StatelessWidget {
  final List<dynamic> dataList;
  final Function(int) onTap;
  final int selectedIndex;

  CustomPlanListView ({
    required this.dataList,
    required this.onTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height * 0.56,
      child: LayoutBuilder(builder: (context, constraints){

        return ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            runSpacing: width * 0.05,
            spacing: width * 0.05,
            children: List.generate(
              dataList.length,
                  (index) => InkWell(
                onTap: () {
                  onTap(index);
                },
                child: _buildListItem(dataList[index], index,width,height),
              ),
            ),
          ),
        ],
      );
      }),
    );
  }

  Widget _buildListItem(dynamic item, int index,var width,height) {
    bool isSelected = index == selectedIndex;
    return Container(
      padding: EdgeInsets.all(width * 0.009),
      width: width * 0.38,
      height: height * 0.25,
      decoration: BoxDecoration(
        color: isSelected ? appColor2.withOpacity(0.8) : Colors.white,
        border: Border.all(
          width: isSelected ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                item.img,
                width: width * 0.08,
              ),
              MyTextLato(
                text: item.planName,
                fontSize: width * 0.042,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(height: width * 0.025),
          MyTextQuickSand(
            text: item.planAmount,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: width * 0.04,
          ),
          SizedBox(height: width * 0.003),
          MyTextLato(
            text: 'Per Month',
            color: Colors.black,
            fontSize: width * 0.025,
          ),
          SizedBox(height: width * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyTextLato(
                text: 'Ads You Show',
                color: Colors.black,
                fontSize: width * 0.025,
              ),
              MyTextQuickSand(
                text: item.numberOfAds,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: width * 0.04,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyTextLato(
                text: 'Validity For Days',
                color: Colors.black,
                fontSize: width * 0.025,
              ),
              MyTextQuickSand(
                text: item.numberOfDays,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: width * 0.04,
              ),
            ],
          ),
          SizedBox(height: width * 0.025),
          Container(
            padding: EdgeInsets.all(width * 0.01),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width * 0.01),
              color: isSelected ? Colors.lightBlueAccent.shade100.withOpacity(0.5) : appColor2,
            ),
            child: Center(
              child: MyTextQuickSand(
                text: isSelected ? 'Selected' : 'Select Plan',
                color: Colors.black,
                fontSize: width * 0.04,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
