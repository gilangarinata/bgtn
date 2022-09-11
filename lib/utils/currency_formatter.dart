import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {

  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {

    // if(newValue.selection.baseOffset == 0){
    //   print(true);
    //   return newValue;
    // }

    // final formatCurrency = NumberFormat.simpleCurrency(locale: 'id_ID');
    // double parsed= double.tryParse(newValue.text) ?? 0.0;
    // print("${parsed}    ${newValue.text}");
    // String formatted = formatCurrency.format(parsed);
    // String newText = formatted.substring(0, formatted.length - 3).replaceAll("Rp", "");



    int value = int.parse(newValue.text.replaceAll(",", ""));

    final formatter = NumberFormat('#,###,000');

    String newText = formatter.format(value);

    print("${oldValue.text}  ${newValue.text}   $newText" );

    String newCopy = newText;

    if(newText[0] == '0' && newText[1] == '0' && newText[2] == '0'){
      newText = newText.substring(3,newText.length);
      newCopy = newText;
    }

    if(newText[0] == '0' && newText[1] == '0'){
      newText = newText.substring(2,newText.length);
      newCopy = newText;
    }


    if(newText[0] == '0'){
      newText = newText.substring(1,newText.length);
      newCopy = newText;
    }


    return newValue.copyWith(
        text: newCopy,
        selection: new TextSelection.collapsed(offset: newCopy.length));
  }
}