abstract class ShopLoginState{}

class ShopLoginIntialState extends ShopLoginState{}
class ShopLoginLoadingState extends ShopLoginState{}
class ShopLogSuccessState extends ShopLoginState{}
class ShopLoginErrorState extends ShopLoginState{
  final String error;

  ShopLoginErrorState({required this.error});
}