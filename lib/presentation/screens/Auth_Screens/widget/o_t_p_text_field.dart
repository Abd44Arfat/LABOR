import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../resources/constants.dart';

class OTPTextField extends StatelessWidget {
  const OTPTextField({
    this.onChanged,
    super.key,
  });
 final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {



    return SizedBox(height: 86,width: 48,
      child: TextFormField(
        decoration: InputDecoration(hintText: '0', filled: true,
          fillColor: kThemeApp,focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: KMainColor)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),),

        onChanged: onChanged != null
            ? (value) {if (value.length==1) {
          FocusScope.of(context).nextFocus();
        }
          onChanged!(value!);
        }
            : null,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly


        ],


      ),
    );
  }
}
