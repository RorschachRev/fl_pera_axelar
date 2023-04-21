import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class EditProfileMainScreen extends StatefulWidget {
  @override
  State<EditProfileMainScreen> createState() => _editProfileMainScreen();
}

class _editProfileMainScreen extends State<EditProfileMainScreen> {
  final controller = Get.put(EditProfileMainController());
  final formKey = GlobalKey<FormState>();
  String first_name = user.first_name;
  String last_name = user.last_name;
  String about_me = user.about_me;
  hiringStatus hiring_status = user.hiring_status;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: SvgImageView(
                              svgPath: ImageConstant.imgArrowleft,
                            )
                        ),
                        Obx(() =>
                        (!controller.form_has_changed.value) ?
                        TextButton(
                            onPressed: () {
                              Get.offAllNamed(AppRoutes.mainScreen);
                            },
                            child: SvgImageView(
                              svgPath: ImageConstant.imgClose,
                            )
                        ) : TextButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                  user.first_name = first_name;
                                  user.last_name = last_name;
                                  user.about_me = about_me;
                                  user.hiring_status = hiring_status;
                                  Get.offAllNamed(AppRoutes.mainScreen + "?selected_screen=user");
                              }
                            },
                            child: SvgImageView(
                              svgPath: ImageConstant.imgDone,
                            )
                        )
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 15, bottom: 10, left: 15, right: 15),
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: ColorConstant.blueA400,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(user.profile_photo_path),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: ColorConstant.gray103,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Change profile photo")
                          ],
                        ),
                      )
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("First name"),
                        TextFormField(
                          initialValue: user.first_name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 5.0),
                              )
                          ),
                          validator: (value) {
                            first_name = value!;
                            return null;
                          },
                          onChanged: (value) {
                            if (value != user.first_name) controller.form_has_changed.value = true;
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Last name"),
                        TextFormField(
                          initialValue: user.last_name,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 5.0),
                              )
                          ),
                          validator: (value) {
                            last_name = value!;
                            return null;
                          },
                          onChanged: (value) {
                            if (value != user.last_name) controller.form_has_changed.value = true;
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About me"),
                        TextFormField(
                          initialValue: user.about_me,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 5.0),
                              )
                          ),
                          validator: (value) {
                            about_me = value!;
                            return null;
                          },
                          onChanged: (value) {
                            if (value != user.about_me) controller.form_has_changed.value = true;
                          },
                          maxLines: null,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 15, left: 15, top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hiring status"),
                        DropdownButtonFormField<hiringStatus>(
                            value: hiring_status,
                            onChanged: (value) {
                              hiring_status = value!;
                              controller.form_has_changed.value = true;
                            },
                            items: hiringStatus.values.map((hiringStatus status) {
                              return DropdownMenuItem<hiringStatus>(
                                  value: status,
                                  child: Text(status.name));
                            }).toList(),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey, width: 5.0),
                                )
                            ),
                        ),
                      ],
                    )
                  )
                ],
              ),
            ) ,
          )
        )
    );
  }
}

class EditProfileMainController extends GetxController {
  RxBool form_has_changed = false.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}