import 'dart:convert';

import 'package:covid_app_practice/Utilities_directory/app_url.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../Model_directory/WorldStatesModel.dart';

class StatesServices{

  Future<WorldStatesModel>fetchWorldStatesRecords() async{

    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
     if(response.statusCode==200)
      {
        var data= jsonDecode(response.body.toString());

        return WorldStatesModel.fromJson(data);
      }
    else {
      throw Exception('Error ');
    }
  }


  Future<List<dynamic>>countriesListApi() async{
/*we are not using model here bcz we only want few attributes
 from API when it hits, just country name anf flag image,
 List is used bcz countries API start from array and it has indexes
 dynamic is used to get response of dfferent type, i.e. country name that is string and flag which is image

  */
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    var data; //global variable
    if(response.statusCode==200)
    {
       data= jsonDecode(response.body.toString());

      return data;
    }
    else {
      throw Exception('Error ');
    }
  }
}


/*
here we call API, it will fetch data from server and response will be shown
Future<WorldStatesModel> this model contains the record(
title, update cases, deaths, recover, population record etc ) of API...
As the json reponse start from object we dont need to create or initialize empty list to store data...
response will directly be stored in  dynamic (var data)...
 */