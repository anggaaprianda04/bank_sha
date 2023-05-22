import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:intl/intl.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  TextEditingController amountController = TextEditingController(text: '0');

  addAmount(String number) {
    setState(() {
      if (amountController.text == '0') {
        amountController.text = '';
      }
      amountController.text = amountController.text + number;
    });
  }

  deletePin() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(int.parse(text.replaceAll(
          '.',
          '',
        ))),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          colorFont: whiteColor,
          title: 'Total Amount',
          backgroundColor: backgroundColorDark),
      backgroundColor: backgroundColorDark,
      body: ListView(
        children: [
          const SizedBox(
            height: 27,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 88),
            width: 200,
            child: TextFormField(
              enabled: false,
              controller: amountController,
              keyboardType: TextInputType.number,
              style: whiteTextStyle.copyWith(
                fontSize: 36,
                fontWeight: medium,
              ),
              cursorColor: greyColor,
              decoration: InputDecoration(
                prefixIcon: Text(
                  'Rp. ',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                InputButton(
                  number: '1',
                  onPressed: () {
                    addAmount('1');
                  },
                ),
                InputButton(
                  number: '2',
                  onPressed: () {
                    addAmount('2');
                  },
                ),
                InputButton(
                  number: '3',
                  onPressed: () {
                    addAmount('3');
                  },
                ),
                InputButton(
                  number: '4',
                  onPressed: () {
                    addAmount('4');
                  },
                ),
                InputButton(
                  number: '5',
                  onPressed: () {
                    addAmount('5');
                  },
                ),
                InputButton(
                  number: '6',
                  onPressed: () {
                    addAmount('6');
                  },
                ),
                InputButton(
                  number: '7',
                  onPressed: () {
                    addAmount('7');
                  },
                ),
                InputButton(
                  number: '8',
                  onPressed: () {
                    addAmount('8');
                  },
                ),
                InputButton(
                  number: '9',
                  onPressed: () {
                    addAmount('9');
                  },
                ),
                const SizedBox(
                  width: 60,
                  height: 60,
                ),
                InputButton(
                  number: '0',
                  onPressed: () {
                    addAmount('0');
                  },
                ),
                GestureDetector(
                  onTap: () {
                    deletePin();
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: backgroundColorNumber),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: CustomButtonField(
              title: 'Continue',
              onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/transfer-success', (route) => false);
                }
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Terms & Conditions',
              style: greyTextStyle,
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
