import 'package:flutter/material.dart';
import 'package:learning_provider/provider/weather_provider.dart';
import 'package:learning_provider/widgets/details.dart';
import 'package:learning_provider/widgets/header.dart';
import 'package:learning_provider/widgets/temperature.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var checkingLoading = Provider.of<WeatherProvider>(context).isLoading;
    return Scaffold(
      body: checkingLoading
          ? Center(child: Image.asset("assets/icons/humidity.png"))
          : SafeArea(
              child: Consumer<WeatherProvider>(
                  builder: (context, weatherProvider, _) {
                var temp = weatherProvider.weather.data[0]!.appTemp;
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  child: ListView(
                    padding: const EdgeInsets.only(top: 20),
                    children: [
                      // the location of the USER
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [headerWidget(city: weatherProvider.city)],
                      ),
                      const SizedBox(height: 20),
                      // the temperature widget
                      temperatureWidget(
                        temperature: temp.toString(),
                        imageID: weatherProvider.weather.data[0]!.weather.icon,
                        description: weatherProvider
                            .weather.data[0]!.weather.description,
                      ),
                      const SizedBox(height: 30),
                      // the details of the weather that is pulled
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "More Details",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5),
                            ),
                            const Divider(
                              height: 8,
                              color: Colors.grey,
                            ),
                            details(
                                desc: "Date",
                                value:
                                    weatherProvider.weather.data[0]!.datetime),
                            details(
                                desc: "Sunrise",
                                value:
                                    weatherProvider.weather.data[0]!.sunrise),
                            details(
                                desc: "Sunset",
                                value: weatherProvider.weather.data[0]!.sunset),
                            details(
                                desc: "Timezone",
                                value:
                                    weatherProvider.weather.data[0]!.timezone),
                            details(
                                desc: "Wind Direction",
                                value: weatherProvider
                                    .weather.data[0]!.windCdirFull),
                            details(
                                desc: "WindSpeed",
                                value: weatherProvider.weather.data[0]!.windSpd
                                    .toString()),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
    );
  }
}
