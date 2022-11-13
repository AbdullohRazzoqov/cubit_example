//! Equality => ikkita classni bir biriga tenglashtirish
//? birinchi classdan olingan instance ikkinchi classdan olingan instance bilan tenglashtira olmaymiz
//? tenglashtirish uchun (tengmi) Equality ishlatish kerak


import 'package:flutter/foundation.dart';

abstract class UsersState {
  UsersState();
}

class UsersInitial extends UsersState {
  UsersInitial();
}

class UsersLoading extends UsersState {
  UsersLoading();
}

class UsersComplete extends UsersState {
  final List<String> response;
  UsersComplete(this.response);
  @override 
  bool operator == (Object o){
    if(identical(this, o)) return true;

    return o is UsersComplete && listEquals(o.response, response);
  } 
  @override 
  int get hashCode => response.hashCode;
}

class UsersError extends UsersState {
  final String errorMassage;
  UsersError(this.errorMassage);
}
