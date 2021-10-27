import 'package:chi_work/employees/employee_vm.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmployeeScreen extends ViewModelBuilderWidget<EmployeeViewModel> {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context, EmployeeViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.grey[200],
        title: Center(
          child: Text(
            'Employees',
            style: TextStyle(color: Colors.cyan[900]),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                // keyboardType: TextInputType.number,
                style: Theme.of(context).textTheme.headline6,
                decoration: const InputDecoration(
                    labelText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
                      child: Row(
                        children: [
                          Image.asset(
                            viewModel.items[index].dummyImage,
                            height: 52,
                            width: 52,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                viewModel.items[index].dummyTitle,
                                style: TextStyle(
                                    color: Colors.cyan[900], fontSize: 18),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                viewModel.items[index].dummySubTitle,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              const SizedBox(
                                height: 6,
                              )
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.videocam_rounded,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.call,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    )
                  ],
                );
              },
              itemCount: viewModel.items.length,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.videocam_rounded),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.call_sharp),
          ),
        ],
      ),
    );
  }

  @override
  EmployeeViewModel viewModelBuilder(BuildContext context) {
    return EmployeeViewModel();
  }
}
