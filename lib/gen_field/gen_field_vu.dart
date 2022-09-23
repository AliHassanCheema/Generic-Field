import 'package:flutter/material.dart';
import 'package:genericfield/gen_field/gen_field_vm.dart';
import 'package:stacked/stacked.dart';

import '../home_vu.dart';
import 'gen_tfield.dart';
import 'gen_pfield.dart';

class GenFieldScreen  extends ViewModelBuilderWidget<GenViewModel> {
  const GenFieldScreen ({super.key,});

  @override
  Widget builder(BuildContext context, GenViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Form(
        key: viewModel.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GenTextField( validator: viewModel.onValidator, hint: 'UserName',onSaveFunction: viewModel.onSaveName,decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.blue,width: 0.0,)
          ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        labelText: 'UserName',
        prefixIcon: Icon(Icons.abc),
      ),),
                const SizedBox(height: 8,),
                GenPassField(validator: viewModel.onValidator, onSaveFunction: viewModel.onSavePassword, decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.blue,width: 0.0,)
          ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        labelText: 'Password',
        prefixIcon: const Icon(Icons.ac_unit),
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility)),
      ),),

                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  viewModel.onSaveBtn();
                  if(viewModel.data !=null ){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomeScreen(data: viewModel.data,);
                    },));
                  }

                }, child: const Text('Save'))
              ],
            ) ),
        ),
      ),
    );
  }
  
  @override
  GenViewModel viewModelBuilder(BuildContext context) {
    return GenViewModel();
  }
}