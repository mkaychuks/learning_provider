// To parse this JSON data, do
//
//     final weather = weatherFromJson(jsonString);

import 'dart:convert';

Weather weatherFromJson(String str) => Weather.fromJson(json.decode(str));

String weatherToJson(Weather data) => json.encode(data.toJson());

class Weather {
    Weather({
        required this.count,
        required this.data,
    });

    int count;
    List<Datum> data;

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        count: json["count"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.appTemp,
        required this.aqi,
        required this.cityName,
        required this.clouds,
        required this.countryCode,
        required this.datetime,
        required this.dewpt,
        required this.dhi,
        required this.dni,
        required this.elevAngle,
        required this.ghi,
        required this.gust,
        required this.hAngle,
        required this.lat,
        required this.lon,
        required this.obTime,
        required this.pod,
        required this.precip,
        required this.pres,
        required this.rh,
        required this.snow,
        required this.solarRad,
        required this.sources,
        required this.stateCode,
        required this.station,
        required this.sunrise,
        required this.sunset,
        required this.temp,
        required this.timezone,
        required this.ts,
        required this.uv,
        required this.vis,
        required this.weather,
        required this.windCdir,
        required this.windCdirFull,
        required this.windDir,
        required this.windSpd,
    });

    double appTemp;
    int aqi;
    String cityName;
    int clouds;
    String countryCode;
    String datetime;
    double dewpt;
    double dhi;
    double dni;
    double elevAngle;
    double ghi;
    double gust;
    int hAngle;
    double lat;
    double lon;
    String obTime;
    String pod;
    int precip;
    double pres;
    int rh;
    int snow;
    double solarRad;
    List<String> sources;
    String stateCode;
    String station;
    String sunrise;
    String sunset;
    double temp;
    String timezone;
    int ts;
    double uv;
    int vis;
    WeatherClass weather;
    String windCdir;
    String windCdirFull;
    int windDir;
    double windSpd;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        appTemp: json["app_temp"]?.toDouble(),
        aqi: json["aqi"],
        cityName: json["city_name"],
        clouds: json["clouds"],
        countryCode: json["country_code"],
        datetime: json["datetime"],
        dewpt: json["dewpt"]?.toDouble(),
        dhi: json["dhi"]?.toDouble(),
        dni: json["dni"]?.toDouble(),
        elevAngle: json["elev_angle"]?.toDouble(),
        ghi: json["ghi"]?.toDouble(),
        gust: json["gust"]?.toDouble(),
        hAngle: json["h_angle"],
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
        obTime: json["ob_time"],
        pod: json["pod"],
        precip: json["precip"],
        pres: json["pres"]?.toDouble(),
        rh: json["rh"],// take note of this block of code....
        snow: json["snow"],
        solarRad: json["solar_rad"]?.toDouble(),
        sources: List<String>.from(json["sources"].map((x) => x)),
        stateCode: json["state_code"],
        station: json["station"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        temp: json["temp"]?.toDouble(),
        timezone: json["timezone"],
        ts: json["ts"],
        uv: json["uv"]?.toDouble(),
        vis: json["vis"],
        weather: WeatherClass.fromJson(json["weather"]),
        windCdir: json["wind_cdir"],
        windCdirFull: json["wind_cdir_full"],
        windDir: json["wind_dir"],
        windSpd: json["wind_spd"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "app_temp": appTemp,
        "aqi": aqi,
        "city_name": cityName,
        "clouds": clouds,
        "country_code": countryCode,
        "datetime": datetime,
        "dewpt": dewpt,
        "dhi": dhi,
        "dni": dni,
        "elev_angle": elevAngle,
        "ghi": ghi,
        "gust": gust,
        "h_angle": hAngle,
        "lat": lat,
        "lon": lon,
        "ob_time": obTime,
        "pod": pod,
        "precip": precip,
        "pres": pres,
        "rh": rh,
        "snow": snow,
        "solar_rad": solarRad,
        "sources": List<dynamic>.from(sources.map((x) => x)),
        "state_code": stateCode,
        "station": station,
        "sunrise": sunrise,
        "sunset": sunset,
        "temp": temp,
        "timezone": timezone,
        "ts": ts,
        "uv": uv,
        "vis": vis,
        "weather": weather.toJson(),
        "wind_cdir": windCdir,
        "wind_cdir_full": windCdirFull,
        "wind_dir": windDir,
        "wind_spd": windSpd,
    };
}

class WeatherClass {
    WeatherClass({
        required this.icon,
        required this.description,
        required this.code,
    });

    String icon;
    String description;
    int code;

    factory WeatherClass.fromJson(Map<String, dynamic> json) => WeatherClass(
        icon: json["icon"],
        description: json["description"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "icon": icon,
        "description": description,
        "code": code,
    };
}
