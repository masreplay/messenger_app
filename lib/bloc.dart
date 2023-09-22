import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_app/bloc/async_state.dart';

mixin AsyncStateCubitMixin<Data> on Cubit<AsyncState<Data, Object?>> {
  Future<void> handle(FutureOr<Data> Function() data) async {
    emit(AsyncState<Data, Object?>.loading());
    try {
      final result = await data();
      emit(AsyncState<Data, Object?>.data(result));
    } catch (e, stackTrace) {
      emit(AsyncState<Data, Object?>.error(e, stackTrace));
    }
  }
}
