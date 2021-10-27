import 'package:chi_work/observations/observations_vm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ObservationsView extends ViewModelBuilderWidget<ObservationsVM> {
  const ObservationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, ObservationsVM viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Observations',
              style: TextStyle(color: Colors.blueGrey[700]),
            ),
            const SizedBox(
              width: 200,
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 3, 8, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 8,
                      height: 64,
                      color: Colors.green[900],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(viewModel.items[index].image,
                        height: 40, width: 40),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          viewModel.items[index].details.heading,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[700]),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(viewModel.items[index].details.patientName,
                            style: const TextStyle(color: Colors.grey)),
                        Text(viewModel.items[index].details.timeDate,
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          viewModel.items[index].readings.name,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[700]),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(viewModel.items[index].readings.reading,
                            style: const TextStyle(
                                color: Colors.green, fontSize: 20)),
                        Text(viewModel.items[index].readings.belowReading,
                            style: const TextStyle(
                                color: Colors.green, fontSize: 8)),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Divider(
                  color: Colors.grey,
                ),
              )
            ],
          );
        },
        itemCount: viewModel.items.length,
      ),
    );
  }

  @override
  ObservationsVM viewModelBuilder(BuildContext context) {
    return ObservationsVM();
  }
}
