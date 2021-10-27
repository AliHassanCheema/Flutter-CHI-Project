import 'package:stacked/stacked.dart';

import 'model.dart';

class ObservationsVM extends BaseViewModel {
  List<Observation> items = [
    Observation(
      'assets/pulse.png',
      Details('Blood Pressure', 'Ali Hassan', 'oct 22 2021 4:27 PM'),
      Readings('bpm', '119/72', 'Pulse'),
    ),
    Observation(
        'assets/point.png',
        Details('Blood Glucose', 'Ali Hassan', 'oct 22 2021 4:27 PM'),
        Readings('BSF', '23.5', 'mmol')),
    Observation(
        'assets/thermometer.png',
        Details('Blood Pressure', 'Ali Hassan', 'oct 22 2021 4:27 PM'),
        Readings('Temperature', '33.3', 'C'))
  ];
}
