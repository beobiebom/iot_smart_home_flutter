import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iot_smart_home/core/theme/palette.dart';
import 'package:iot_smart_home/generated/locales.g.dart';
import 'package:iot_smart_home/modules/login/controllers/login.controller.dart';
import 'package:iot_smart_home/widgets/icon_text_form_field.widget.dart';
import 'package:unicons/unicons.dart';

class FormInput extends GetView<LoginController> {
  const FormInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 210.h,
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Form(
        key: controller.loginFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextFormField(
              textController: controller.ipController,
              icon: UniconsLine.user,
              hintText: LocaleKeys.text_username.tr,
              validator: controller.validateIp,
            ),
            const Divider(
              color: Palette.lightGray,
              thickness: 1.2,
            ),
            IconTextFormField(
              textController: controller.passController,
              icon: UniconsLine.lock,
              hintText: LocaleKeys.text_password.tr,
              isObsecure: true,
              validator: controller.validatePassword,
            ),
          ],
        ),
      ),
    );
  }
}
