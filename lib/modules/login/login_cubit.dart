import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/modules/login/login_states.dart';
import 'package:shope_app/network/dio_helper.dart';
import 'package:shope_app/network/end_points.dart';

class ShopLoginCubit extends Cubit<ShopLoginState>{
  ShopLoginCubit():super(ShopLoginIntialState());
  static ShopLoginCubit get (context)=>BlocProvider.of(context);

  

  void useLogin({
    required String email,
    required String password,

  }){
    emit(ShopLoginLoadingState());
    DioHelper.postData(url: lOGIN, data: {
      'email':email,
      'password':password,
    }).then((value){
      print(value.data);
      emit(ShopLogSuccessState());
    }).catchError((error){
      print('noooooooooooooooooooo');
      print(error.toString());
      emit(ShopLoginErrorState(error: error.toString()));
    });
  }
}