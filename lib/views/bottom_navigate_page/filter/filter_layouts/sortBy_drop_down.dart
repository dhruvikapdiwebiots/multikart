import 'package:multikart/controllers/home_product_controllers/filter_controller.dart';

import '../../../../config.dart';

class SortByDropDown extends StatelessWidget {
  const SortByDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(
        builder: (shopCtrl) {
          return DropdownButton(

            value: shopCtrl.dropDownVal,
            items:const  [
              //add items in the dropdown
              DropdownMenuItem(
                child: Text("Recommended"),
                value: "Recommended",
              ),
              DropdownMenuItem(
                  child: Text("Popularity"),
                  value: "Popularity"),
              DropdownMenuItem(
                child: Text("What's New"),
                value: "What's New",
              ),
              DropdownMenuItem(
                child: Text("Price: High to Low"),
                value: "Price: High to Low",
              ),
              DropdownMenuItem(
                child: Text("Price: Low to High"),
                value: "Price: Low to High",
              ),
              DropdownMenuItem(
                child: Text("Customer Rating"),
                value: "Customer Rating",
              )
            ],
            onChanged: (value) {
              //get value when changed
              shopCtrl.dropDownVal = value.toString();
              shopCtrl.update();
            },
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: shopCtrl.appCtrl.appTheme.blackColor,
            ),
            //Icon color
            style: TextStyle(
              //te
                color: shopCtrl.appCtrl.appTheme.blackColor, //Font color
                fontFamily: GoogleFonts.mulish().fontFamily,
                fontSize: AppScreenUtil().fontSize(CommonTextFontSize
                    .textSizeSMedium) //font size on dropdown button
            ),
            underline: Container(),
            //remove underline
            isExpanded: true, //make true to make width 100%
          );
        }
    );
  }
}