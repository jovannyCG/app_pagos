import 'package:app_pagos/models/credit_card.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pay_event.dart';
part 'pay_state.dart';

class PayBloc extends Bloc<PayEvent, PayState> {
  PayBloc() : super(const PayState()) {
    on<OnSelectedCard>((event, emit) =>
        emit(state.copyWith(cardActivate: true, card: event.card)));

    on<OnDesactivateCard>((event, emit) => emit(state.copyWith(
          cardActivate: false,
        )));

    // @override
    // Stream<PayState> mapEventToState(PayEvent event) async* {
    //  if (event is OnSelectedCard) {
    //    yield state.copyWith(cardActivate: true, card: event.card);
    // } else if (event is OnDesactivateCard) {
    //   yield state.copyWith(cardActivate: false);
    // }
    // }
  }
}
