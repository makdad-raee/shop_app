import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/cubit/shop_states.dart';
import 'package:shope_app/modules/onboarding_models.dart';

class ShopCubit extends Cubit<ShopState>{
  ShopCubit():super(ShopintialState());
  static ShopCubit get(context)=>BlocProvider.of(context);

  List<OnBordingModel> onBording=[
    OnBordingModel(body: 'On Board 1 body', title: 'On Board 1 title'),
    OnBordingModel(body: 'On Board 2 body', title: 'On Board 2 title'),
    OnBordingModel(body: 'On Board 3 body', title: 'On Board 3 title')
  ];
}