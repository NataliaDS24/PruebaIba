import 'dart:convert';

import 'package:pruebaibacrea/src/features/models/workPeople.dart';
import 'package:http/http.dart' as http;

const Url =
    "https://raw.githubusercontent.com/sapardo10/content/master/RH.json";

class WorkPeopleRepository {
  getWorkPeople() async {
    var response = await http.get(Url);
    Map<String, dynamic> responseData = json.decode(response.body);
    List workpeopleJson = responseData["employees"].toList();
    List<Workpeople> workPeople = workpeopleJson
        .map((workpeopleJson) => Workpeople.fromMap(workpeopleJson))
        .toList();
    return workPeople;
  }
}
