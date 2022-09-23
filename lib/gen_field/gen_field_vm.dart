import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class GenViewModel extends BaseViewModel{
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Model? data;
  String? name;
  String? passWord;

  String? onValidator(String? value){
    if(value ==null || value == '') {
      return 'Please Enter Text';
    }
    return null;
  }
  onSaveName(String? value){
    name = value;
  }
  onSavePassword(String? value){
    passWord = value;
  }
  onSaveBtn(){
    if(!formKey.currentState!.validate()){
      return;
    }
    formKey.currentState!.save();
    data = Model(name, passWord);
    debugPrint('${data!.passWord}');
  }
}

class Model{
  String? uName;
  String? passWord;

  Model(this.uName, this.passWord);
}