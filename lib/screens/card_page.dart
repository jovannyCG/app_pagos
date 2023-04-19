import 'package:app_pagos/models/credit_card.dart';
import 'package:app_pagos/widget/total_pay_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import '../blocs/pay/pay_bloc.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final gpsBloc = BlocProvider.of<PayBloc>(context);
     final card = BlocProvider.of<PayBloc>(context).state.card;

    return Scaffold(
      appBar: AppBar(
      leading:
          IconButton(onPressed: (){
            gpsBloc.add(OnDesactivateCard());
          }, icon: const Icon(Icons.arrow_back)),
        
        centerTitle: true,
        backgroundColor: const Color(0xff284879),
        title: const Text('pagos'),
      ),
      body: Stack(
        children: [
          
          Container(),
          Hero(
            tag: card!.cardNumber,
            child: CreditCardWidget(
                    cardHolderName: card.cardHolderName, 
                    cardNumber: card.cardNumberHidden, 
                    cvvCode: card.cvv, 
                    expiryDate: card.expiracyDate, 
                    onCreditCardWidgetChange: (CreditCardBrand ) {  }, 
                    showBackView: false,),
          ),
          const Positioned(
            bottom: 0,
            child: TotalPayButton())
        ],
      )
   );
  }
}