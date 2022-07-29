import 'package:application1/core/app_export.dart';

///SelectionPopupModel is common model
///used for setting data into dropdowns
class SelectionPopupModel {
  int? id;
  String title;
  dynamic value;
  bool isSelected;
  String imageConst;
  String hint;

  SelectionPopupModel({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
    this.imageConst = "assets/images/image_not_found.png",
    this.hint = "null",
  });
}
