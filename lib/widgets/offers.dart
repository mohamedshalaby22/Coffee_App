import 'package:flutter/material.dart';
import '../constant/constants.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
      decoration: BoxDecoration(
        color: formFieldColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 100,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(
                'https://th.bing.com/th/id/R.0ed2b899873c0419d8e9ae7b4b1d880f?rik=HLcRxuOtWaZnjQ&riu=http%3a%2f%2fpaintingrachelred.weebly.com%2fuploads%2f2%2f3%2f8%2f6%2f23867843%2f4309545_orig.jpg&ehk=IFkRhQd3lBAjMdohs95GZulZcZRQuaG3pT3ib0r%2bMpM%3d&risl=&pid=ImgRaw&r=0',
                fit: BoxFit.fill),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text('Discount Sale',
                    style: TextStyle(
                        color: textColor, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('Buy Two Coffee latte Get \nOne Coffee Machito Free ',
                  style:
                      TextStyle(color: textColor, fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
