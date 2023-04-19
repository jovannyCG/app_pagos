part of 'pay_bloc.dart';

@immutable
 class PayState {

  final double montopago;
  final String moneda;
  final bool cardActivate;
  final TarjetaCredito? card;

  const PayState({
    this.montopago = 356.89, 
    this.moneda= 'USD', 
    this.cardActivate = false, 
    this.card
    });
    PayState copyWith({
  final double? montopago,
  final String? moneda,
  final bool? cardActivate,
  final TarjetaCredito? card,
  })=> PayState(
    montopago : montopago ?? this.montopago, 
    moneda : moneda ?? this.moneda,
    cardActivate : cardActivate ?? this.cardActivate, 
    card: card ?? this.card
  );
}


