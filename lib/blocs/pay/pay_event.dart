part of 'pay_bloc.dart';

@immutable
abstract class PayEvent {}

class OnSelectedCard extends PayEvent{
  final TarjetaCredito card;

  OnSelectedCard(this.card);

}
class OnDesactivateCard extends PayEvent{
}