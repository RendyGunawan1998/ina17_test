import 'package:flutter_bloc/flutter_bloc.dart';

import '../core.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();

  List<dynamic> num = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              height: Get.height,
              width: Get.width,
              child: BlocBuilder<NumberBloc, NumberState>(
                  builder: (context, state) {
                if (state is NumberLoading) {
                  return Center(child: CircularProgressIndicator());
                } else if (state is NumberLoaded) {
                  num = state.numbers;
                  print('Number Home Screen ::$num');
                }
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter a value',
                          ),
                        ),
                        hbox(10),
                        rowbutton(
                            '1',
                            () {
                              if (controller.text.isEmpty) {
                                Get.snackbar('Empty',
                                    'Please input value first, then press button');
                              } else {
                                num.clear();
                                var value = int.tryParse(controller.text);
                                context
                                    .read<NumberBloc>()
                                    .add(NumberChanged1(value!));
                                controller.clear();
                              }
                            },
                            '2',
                            () {
                              if (controller.text.isEmpty) {
                                Get.snackbar('Empty',
                                    'Please input value first, then press button');
                              } else {
                                num.clear();
                                var value = int.tryParse(controller.text);
                                context
                                    .read<NumberBloc>()
                                    .add(NumberChanged2(value!));
                                controller.clear();
                              }
                            }),
                        hbox(5),
                        rowbutton(
                            '3',
                            () {
                              if (controller.text.isEmpty) {
                                Get.snackbar('Empty',
                                    'Please input value first, then press button');
                              } else {
                                num.clear();
                                var value = int.tryParse(controller.text);
                                context
                                    .read<NumberBloc>()
                                    .add(NumberChanged3(value!));
                                controller.clear();
                              }
                            },
                            '4',
                            () {
                              if (controller.text.isEmpty) {
                                Get.snackbar('Empty',
                                    'Please input value first, then press button');
                              } else {
                                num.clear();
                                var value = int.tryParse(controller.text);
                                context
                                    .read<NumberBloc>()
                                    .add(NumberChanged4(value!));
                                controller.clear();
                              }
                            }),
                        hbox(20),
                        Text(
                          'Result :',
                          textAlign: TextAlign.left,
                        ),
                        hbox(10),
                        num.isEmpty ? Text('no value') : Text(num.toString()),
                      ],
                    ),
                  ),
                );
              }))),
    );
  }
}
