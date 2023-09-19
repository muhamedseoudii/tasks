import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  bool isLoading = false;
  final cityController = TextEditingController(text: "cairo");
  bool isFailed = false;
  WeatherData? model;

  void getWeather() async {
    isLoading = true;
    setState(() {});
    try {
      var response = await Dio().get(
          "https://api.openweathermap.org/data/2.5/weather?q=${cityController.text}&appid=509dc5d730ff2dd6003b22f30ae93313");
      model = WeatherData.fromJson(response.data);
    } on DioException catch (ex) {
      isFailed = true;
    }
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weather")),
      drawer: Drawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(26),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              controller: cityController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "Search City or Country",
                labelStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                filled: true,
                fillColor: Color(0xffF2F2F2),
                hintText: "Search City or Country",
                hintStyle: TextStyle(color: Color(0xffB6B7B7), fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                  borderSide: BorderSide.none,
                  gapPadding: 5,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  getWeather();
                },
                child: Text("Search")),
            SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator()
                : isFailed
                    ? Center(
                        child: Text("Failed",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)))
                    : model != null
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "${model!.name}",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Time Zone: " + "${model!.timezone}",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Image.network(
                                "https://openweathermap.org/img/wn/${model!.weather[0].icon}@2x.png",
                                height: 200,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Temperature",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Text(
                                    "Humidity",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${model!.main.temp.toString()}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 135,
                                  ),
                                  Text(
                                    "${model!.main.humidity.toString()}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Weather Condition",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${model!.weather[0].description}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Wind Speed",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "Wind degree",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    "Pressure",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${model!.wind.speed}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    "${model!.wind.deg}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    "${model!.main.pressure}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
// Text(model!.main.temp.toString()),
