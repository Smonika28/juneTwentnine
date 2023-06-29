// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:groomely_seller/core/app_export.dart';
// import 'package:groomely_seller/feature/login/bloc/seller_login_bloc.dart';
// import 'package:groomely_seller/feature/login/presentation/login_screen.dart';
// import 'package:groomely_seller/utils/Toast/app_toast.dart';
// import 'package:groomely_seller/widgets/custom_button.dart';
// import 'package:groomely_seller/widgets/custom_text_form_field.dart';
// import '../../../presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
//
// class SignUPScreen extends StatelessWidget {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController cnfPasswordController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorConstant.whiteA700,
//       // resizeToAvoidBottomInset: false,
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgSideviewmang,
//                 height: getVerticalSize(
//                   280,
//                 ),
//                 width: getHorizontalSize(
//                   414,
//                 ),
//                 radius: BorderRadius.only(
//                   bottomLeft: Radius.circular(
//                     getHorizontalSize(
//                       200,
//                     ),
//                   ),
//                   bottomRight: Radius.circular(
//                     getHorizontalSize(
//                       200,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Text(
//                 "Signup to Explore More",
//                 maxLines: null,
//                 textAlign: TextAlign.center,
//                 style: AppStyle.txtInterMedium24,
//               ),
//               CustomTextFormField(
//                 focusNode: FocusNode(),
//                 autofocus: true,
//                 controller: emailController,
//                 hintText: "Name",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//             CustomTextFormField(
//                 focusNode: FocusNode(),
//                 isObscureText: true,
//                 autofocus: true,
//                 controller: passwordController,
//                 hintText: "Email id",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//                CustomTextFormField(
//                 focusNode: FocusNode(),
//                 isObscureText: true,
//                 autofocus: true,
//                 controller: passwordController,
//                 hintText: "Phone number",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//                CustomTextFormField(
//                 focusNode: FocusNode(),
//                 isObscureText: true,
//                 autofocus: true,
//                 controller: passwordController,
//                 hintText: "password",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//                CustomTextFormField(
//                 focusNode: FocusNode(),
//                 isObscureText: true,
//                 autofocus: true,
//                 controller: passwordController,
//                 hintText: "confirm password",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//               BlocListener<SellerLoginBloc, SellerLoginState>(
//                 listener: (context, state) {
//                   print("state --> $state");
//                   if (state is SellerLoginLoadedState) {
//                             ToastMessage().toast(
//                                 context: context,
//                                 message: state.responseModel.message.toString(),
//                                 messageColor: Colors.white,
//                                 background: Colors.green);
//                         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ManageServicesContainer1Screen()), (route) => false);
//                           } else if (state is SellerLoginErrorState) {
//                             ToastMessage().toast(
//                                 duration: 5000,
//                                 context: context,
//                                 message: state.errorMsg.toString(),
//                                 messageColor: Colors.white,
//                                 background: Colors.redAccent);
//                           }
//
//                 },
//                 child: CustomButton(
//                   onTap: () {
//                     // BlocProvider.of<SellerLoginBloc>(context).add(
//                     //     SellerLoginEvents(
//                     //         userName: emailController.text.trim(),
//                     //         password: passwordController.text.trim()));
//                     //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageServicesContainer1Screen()));
//                   },
//                   height: getVerticalSize(
//                     55,
//                   ),
//                   text: "LOGIN",
//                   margin: getMargin(
//                     left: 60,
//                     top: 40,
//                     right: 61,
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: getPadding(
//                     left: 98,
//                     top: 9,
//                   ),
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "Have an  account?  ",
//                           style: TextStyle(
//                             color: ColorConstant.gray900,
//                             fontSize: getFontSize(
//                               12,
//                             ),
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         TextSpan(
//                           text: "LOGIN NOW",
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               Navigator.pushAndRemoveUntil(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginScreen()),
//                                   (route) => false);
//                             },
//                           style: TextStyle(
//                             color: ColorConstant.orangeA200,
//                             fontSize: getFontSize(
//                               12,
//                             ),
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
import '../../../theme/app_style.dart';
import '../../../utils/Toast/app_toast.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../login/bloc/seller_login_bloc.dart';
import '../../login/presentation/login_screen.dart';


class SignUPScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnfPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String _errorMessage = '';
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      // resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSideviewmang,
                height: getVerticalSize(
                  280,
                ),
                width: getHorizontalSize(
                  414,
                ),
                radius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      200,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      200,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Signup to Explore More",
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterMedium24,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: nameController,
                hintText: "Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter name';
                  }
                  return null;
                },
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                // isObscureText: true,
                autofocus: true,
                controller: emailController,
                hintText: "Email id",
                validator: (input) =>
                    input!.isValidEmail() ? null : "Please valid email id",

                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                // isObscureText: true,
                autofocus: true,
                controller: phoneController,
                hintText: "Phone number",
                validator: (value) {
                  if (value?.length != 10)
                    return 'Mobile Number must be of 10 digit';
                  else
                  return null;
                  // else
                  //   return null;
                },
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                isObscureText: true,
                autofocus: true,
                controller: passwordController,
                hintText: "password",
                // onChanged: (value) {
                //   if (value != cnfPasswordController.text) {
                //     _errorMessage = 'Password does not match';
                //   } else {
                //     _errorMessage = '';
                //   }
                // },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                isObscureText: true,
                autofocus: true,
                controller: cnfPasswordController,
                hintText: "confirm password",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirm password';
                  }
                  return null;
                },
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              BlocListener<SellerLoginBloc, SellerLoginState>(
                listener: (context, state) {
                  print("state --> $state");
                  if (state is SellerLoginLoadedState) {
                    ToastMessage().toast(
                        context: context,
                        message: state.responseModel.message.toString(),
                        messageColor: Colors.white,
                        background: Colors.green);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ManageServicesContainer1Screen()),
                        (route) => false);
                  } else if (state is SellerLoginErrorState) {
                    ToastMessage().toast(
                        duration: 5000,
                        context: context,
                        message: state.errorMsg.toString(),
                        messageColor: Colors.white,
                        background: Colors.redAccent);
                  }
                },
                child: CustomButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }

                    BlocProvider.of<SellerLoginBloc>(context).add(
                        SellerLoginEvents(
                            userName: emailController.text.trim(),
                            password: passwordController.text.trim(),
                            cfpassword: cnfPasswordController.text.trim(),
                            email: emailController.text.trim(),
                            phone: phoneController.text.trim()));

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             ManageServicesContainer1Screen()));
                  },
                  height: getVerticalSize(
                    55,
                  ),
                  text: "LOGIN",
                  margin: getMargin(
                    left: 60,
                    top: 40,
                    right: 61,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 98,
                    top: 9,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Have an  account?  ",
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "LOGIN NOW",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (route) => false);
                            },
                          style: TextStyle(
                            color: ColorConstant.orangeA200,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
// void validateEmail(String val) {
//   if(val.isEmpty){
//     setState(() {
//       _errorMessage = "Email can not be empty";
//     });
//   }else if(!EmailValidator.validate(val, true)){
//     setState(() {
//       _errorMessage = "Invalid Email Address";
//     });
//   }else{
//     setState(() {
//
//       _errorMessage = "";
//     });
//   }
// }
//
// class _errorMessage {
// }
// }

//
// // previous code without validation
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
// import '../../../theme/app_style.dart';
// import '../../../utils/Toast/app_toast.dart';
// import '../../../utils/color_constant.dart';
// import '../../../utils/image_constant.dart';
// import '../../../utils/size_utils.dart';
// import '../../../widgets/custom_button.dart';
// import '../../../widgets/custom_image_view.dart';
// import '../../../widgets/custom_text_form_field.dart';
// import '../../login/bloc/seller_login_bloc.dart';
// import '../../login/presentation/login_screen.dart';
//
// class SignUPScreen extends StatelessWidget {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController cnfPasswordController = TextEditingController();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorConstant.whiteA700,
//       // resizeToAvoidBottomInset: false,
//       body: Form(
//         key: _formKey,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgSideviewmang,
//                 height: getVerticalSize(
//                   280,
//                 ),
//                 width: getHorizontalSize(
//                   414,
//                 ),
//                 radius: BorderRadius.only(
//                   bottomLeft: Radius.circular(
//                     getHorizontalSize(
//                       200,
//                     ),
//                   ),
//                   bottomRight: Radius.circular(
//                     getHorizontalSize(
//                       200,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Text(
//                 "Signup to Explore More",
//                 maxLines: null,
//                 textAlign: TextAlign.center,
//                 style: AppStyle.txtInterMedium24,
//               ),
//               CustomTextFormField(
//                 focusNode: FocusNode(),
//                 autofocus: true,
//                 controller: nameController,
//                 hintText: "Name",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//               CustomTextFormField(
//                 focusNode: FocusNode(),
//                 // isObscureText: true,
//                 autofocus: true,
//                 controller: emailController,
//                 hintText: "Email id",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//               CustomTextFormField(
//                 focusNode: FocusNode(),
//                 // isObscureText: true,
//                 autofocus: true,
//                 controller: phoneController,
//                 hintText: "Phone number",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//               CustomTextFormField(
//                 focusNode: FocusNode(),
//                 isObscureText: true,
//                 autofocus: true,
//                 controller: passwordController,
//                 hintText: "password",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//               CustomTextFormField(
//                 focusNode: FocusNode(),
//                 isObscureText: true,
//                 autofocus: true,
//                 controller: cnfPasswordController,
//                 hintText: "confirm password",
//                 margin: getMargin(
//                   left: 60,
//                   top: 23,
//                   right: 61,
//                 ),
//                 variant: TextFormFieldVariant.OutlineOrangeA200,
//                 fontStyle: TextFormFieldFontStyle.InterRegular14,
//                 textInputAction: TextInputAction.done,
//                 textInputType: TextInputType.emailAddress,
//               ),
//               BlocListener<SellerLoginBloc, SellerLoginState>(
//                 listener: (context, state) {
//                   print("state --> $state");
//                   if (state is SellerLoginLoadedState) {
//                     ToastMessage().toast(
//                         context: context,
//                         message: state.responseModel.message.toString(),
//                         messageColor: Colors.white,
//                         background: Colors.green);
//                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ManageServicesContainer1Screen()), (route) => false);
//                   } else if (state is SellerLoginErrorState) {
//                     ToastMessage().toast(
//                         duration: 5000,
//                         context: context,
//                         message: state.errorMsg.toString(),
//                         messageColor: Colors.white,
//                         background: Colors.redAccent);
//                   }
//
//                 },
//                 child: CustomButton(
//                   onTap: () {
//                     // BlocProvider.of<SellerLoginBloc>(context).add(
//                     //     SellerLoginEvents(
//                     //         userName: emailController.text.trim(),
//                     //         password: passwordController.text.trim()));
//                     //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageServicesContainer1Screen()));
//                   },
//                   height: getVerticalSize(
//                     55,
//                   ),
//                   text: "LOGIN",
//                   margin: getMargin(
//                     left: 60,
//                     top: 40,
//                     right: 61,
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: getPadding(
//                     left: 98,
//                     top: 9,
//                   ),
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "Have an  account?  ",
//                           style: TextStyle(
//                             color: ColorConstant.gray900,
//                             fontSize: getFontSize(
//                               12,
//                             ),
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                         TextSpan(
//                           text: "LOGIN NOW",
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               Navigator.pushAndRemoveUntil(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => LoginScreen()),
//                                       (route) => false);
//                             },
//                           style: TextStyle(
//                             color: ColorConstant.orangeA200,
//                             fontSize: getFontSize(
//                               12,
//                             ),
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.left,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }