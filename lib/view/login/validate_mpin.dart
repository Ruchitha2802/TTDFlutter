import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ttd_flutter_app/res/appStrings/english_strings.dart';
import 'package:ttd_flutter_app/res/components/colors/colors.dart';
import 'package:ttd_flutter_app/res/components/images/image_strings.dart';
import 'package:ttd_flutter_app/res/components/reusable_widgets/base_scaffold.dart';
import 'package:ttd_flutter_app/res/components/routes/app_routeconstants.dart';

class Validate_Mpin extends StatefulWidget {
  const Validate_Mpin({super.key});

  @override
  State<Validate_Mpin> createState() => _Validate_MpinState();
}

class _Validate_MpinState extends State<Validate_Mpin> {
  TextEditingController _validatempinController =TextEditingController();
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Container(
        color: AppColors.bg_color,
        child: Center(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(1.0, 1.0),
                  )
                ],
                borderRadius: BorderRadius.circular(10),color:Colors.white),
                height: 350,
                width: 380,
                child: Column(
                  children: [
                    Padding(padding:const EdgeInsets.all(8.0),
                    child: Image.asset(ImageStrings.logo,
                    height: 70,
                    width: 70,
                    ),
                    ),
                    Text(EnglishStrings.app_name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )
                    ),
                     Text(""),
                    Text("Enter 4-Digit MPIN"),
                    
                    Form(key: formKey, 
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 50,
                      ),
                      child: PinCodeTextField(
                        appContext: context,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        pastedTextStyle: TextStyle(
                          color: AppColors.dash_bg,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 4,
                        obscureText: true,
                        obscuringCharacter: '*',
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        validator: (v){
                          if(v!.length<3){
                            return "I am from Validator";
                          }else{
                            return null;
                          }
                        },
                        pinTheme: PinTheme(
                          activeFillColor: AppColors.dash_bg,
                          activeColor: AppColors.dash_bg,
                          inactiveColor: AppColors.dash_bg,
                          inactiveFillColor: AppColors.bg_color,
                          selectedFillColor: AppColors.bg_color,
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 50,
                        ),
                        cursorColor: Colors.black,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        controller: _validatempinController,
                        keyboardType: TextInputType.number,
                        boxShadows: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (v){
                          debugPrint("Completed");
                        },
                        onChanged: (value){
                            debugPrint(value);
                            setState(() {
                              currentText = value;
                            });
                        },
                        beforeTextPaste: (text){
                          debugPrint("Allowing to Paste $text");
                          return true;
                        },
                      ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /* SizedBox(width: 250,), */
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0,bottom: 8.0,top: 0.0),
                          child: Text(EnglishStrings.notyou,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),),
                           Padding(
                          padding: const EdgeInsets.only(right: 8.0,bottom: 8.0,top: 0.0),
                          child: Text(EnglishStrings.forgotmpin,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          ),),
                          
                      ],
                    ),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, AppRouteConstants.DashboardView);
                      },
                     child: Text(EnglishStrings.vali_login,
                     style: TextStyle(color: Colors.white),
                     ),
                     style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(Size(250, 40)),
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.dash_bg),
                      shape: 
                      MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: AppColors.dash_bg)))
                      ),
                     
                     )

                  ]
                  ),

                ),
            ),

          )
           ),
      );
      
  }
}
