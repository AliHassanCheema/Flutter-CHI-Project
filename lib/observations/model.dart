class Observation {
  String image;
  Details details;
  Readings readings;
  Observation(this.image, this.details, this.readings);
}

class Details {
  String heading;
  String patientName;
  String timeDate;
  Details(this.heading, this.patientName, this.timeDate);
}

class Readings {
  String name;
  String reading;
  String belowReading;
  Readings(this.name, this.reading, this.belowReading);
}
