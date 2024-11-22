import 'package:ina17_test/core.dart';

hbox(double h) {
  return SizedBox(
    height: h,
  );
}

wbox(double h) {
  return SizedBox(
    height: h,
  );
}

rowbutton(String text1, Function() func1, String text2, Function() func2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(flex: 4, child: boxButton(text1, func1)),
      Expanded(flex: 1, child: wbox(1)),
      Expanded(flex: 4, child: boxButton(text2, func2))
    ],
  );
}

boxButton(String text, Function() func) {
  return InkWell(
    onTap: func,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ),
  );
}
