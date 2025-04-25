import 'package:flutter/material.dart';
import 'package:ieeeassignment/conponent/about.dart';
import 'package:ieeeassignment/conponent/botton.dart';

class Planet {
  final String name;
  final String image;

  Planet({required this.name, required this.image});
}

class PlanetPageView extends StatefulWidget {
  const PlanetPageView({super.key});

  @override
  _PlanetPageViewState createState() => _PlanetPageViewState();
}

class _PlanetPageViewState extends State<PlanetPageView> {
  final List<Planet> planets = [
    Planet(name: "Mercury", image: "mercury.png"),
    Planet(name: "Venus", image: "venus.png"),
    Planet(name: "Earth", image: "earth.png"),
    Planet(name: "Mars", image: "mars.png"),
    Planet(name: "Jupiter", image: "jupiter.png"),
    Planet(name: "Saturn", image: "saturn.png"),
    Planet(name: "Uranus", image: "uranus.png"),
    Planet(name: "Neptune", image: "neptune.png"),
  ];

  final Map<String, Map<String, String>> planetData = {
    "Mercury": {
      "Title": "Mercury: The Closest Planet",
      "About": " The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, andenergy to everything within its gravitational pull. Its immense size and temperature are fueledby nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amountsof energy. The Sun's magnetic field, which is constantly changing, influences solar activity likesunspots and solar flares, affecting space weather and potentially disrupting Earth-basedtechnologies.",
      "DistancefromSun": "57,909,227",
      "LengthofDay": "1,407.6",
      "OrbitalPeriod": "0.24",
      "Radius": "2,439.7",
      "Mass": "3.3011 × 10²³",
      "Gravity": "3.7",
      "SurfaceArea": "74,800,000",
      "image": "mercury.png",
    },
    "Venus": {
      "Title": "Venus: Earth's Toxic Twin",
      "About": " Venus is often referred to as Earth's twin due to its similar size and composition. However, itsthick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatureshot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, whichreflect sunlight and give it a yellowish appearance",
      "DistancefromSun": "108,209,475",
      "LengthofDay": "2,802",
      "OrbitalPeriod": "0.62",
      "Radius": "6,051.8",
      "Mass": "4.8675 × 10²⁴",
      "Gravity": "8.87",
      "SurfaceArea": "460,200,000",
      "image": "venus.png",
    },
    "Earth": {
      "Title": " Earth: Our Blue Marble",
      "About": "Earth is the only known planet in the universe that supports life. Its unique combination offactors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun,has created the ideal conditions for the development of complex organisms. Earth's magneticfield protects it from harmful solar radiation, and its atmosphere helps to regulate temperatureand weather patterns.",
      "DistancefromSun": "149,598,262",
      "LengthofDay": "24",
      "OrbitalPeriod": "1",
      "Radius": "6,371",
      "Mass": "5.972 × 10²⁴",
      "Gravity": "9.807",
      "SurfaceArea": "510,100,000",
      "image": "earth.png",
    },
    "Mars": {
      "Title": "Mars: The Red Planet",
      "About": " Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rockyworld with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of pastvolcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime targetfor exploration due to its potential for past or present life, and NASA's Perseverance rover iscurrently searching for signs of ancient microbial life on the planet's surface.",
      "DistancefromSun": "227,943,824",
      "LengthofDay": "24.7",
      "OrbitalPeriod": "1.88",
      "Radius": "3,389.5",
      "Mass": "6.417 × 10²³",
      "Gravity": "3.711",
      "SurfaceArea": "144,800,000",
      "image": "mars.png",
    },
    "Jupiter": {
      "Title": "Jupiter: The Gas Giant",
      "About": " Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen andhelium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament toits turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, includingEuropa, which is believed to have a subsurface ocean that could potentially harbor life..",
      "DistancefromSun": "778,340,821",
      "LengthofDay": "9.9",
      "OrbitalPeriod": "11.86",
      "Radius": "69,911",
      "Mass": "1.898 × 10²⁷",
      "Gravity": "24.79",
      "SurfaceArea": "6.1419 × 10¹⁰",
      "image": "jupiter.png",
    },
    "Saturn": {
      "Title": "Saturn: The Ringed Planet",
      "About": " Saturn is best known for its spectacular rings, which are composed of countless ice particles androcks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it adistinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only knowncelestial body outside of Earth with liquid lakes and rivers.",
      "DistancefromSun": "1,426,666,422",
      "LengthofDay": "10.7",
      "OrbitalPeriod": "29.46",
      "Radius": "58,232",
      "Mass": "5.683 × 10²⁶",
      "Gravity": "10.44",
      "SurfaceArea": "4.27 × 10¹⁰",
      "image": "saturn.png",
    },
    "Uranus": {
      "Title": " Uranus: The Tilted Planet",
      "About": " Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surroundedby faint rings and has numerous moons, including Miranda, known for its chaotic terrain.Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a paleblue color.",
      "DistancefromSun": "2,870,658,186",
      "LengthofDay": "17.2",
      "OrbitalPeriod": "84.01",
      "Radius": "25,362",
      "Mass": "8.681 × 10²⁵",
      "Gravity": "8.69",
      "SurfaceArea": "8.1156 × 10⁹",
      "image": "uranus.png",
    },
    "Neptune": {
      "Title": "Neptune: The Distant World",
      "About": " Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar toUranus, but it is a deeper blue color due to the presence of methane. Neptune has severalmoons, including Triton, which orbits the planet in a retrograde direction and is believed to be acaptured Kuiper Belt object.",
      "DistancefromSun": "4,498,396,441",
      "LengthofDay": "16.1",
      "OrbitalPeriod": "164.8",
      "Radius": "24,622",
      "Mass": "1.024 × 10²⁶",
      "Gravity": "11.15",
      "SurfaceArea": "7.618 × 10⁹",
      "image": "neptune.png",
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  child: Transform.scale(
                    scaleY: -1,
                    child: Image.asset("images/top.jpeg"),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Text(
                    "Explore",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 30,
                  right: 30,
                  child: Text(
                    "Which Planet\nwould you like to explore?",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView.builder(
              itemCount: planets.length,
              itemBuilder: (context, index) {
                final planetName = planets[index].name;
                final data = planetData[planetName]!;

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Container(
                        child: Image.asset(
                          "images/${planets[index].image}",
                          height: 450,
                          width: 450,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      planetName,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 70),
                    Botton(
                      page: about(
                        planet: planetName,
                        DistancefromSun: data["DistancefromSun"]!,
                        Gravity: data["Gravity"]!,
                        LengthofDay: data["LengthofDay"]!,
                        Mass: data["Mass"]!,
                        OrbitalPeriod: data["OrbitalPeriod"]!,
                        Radius: data["Radius"]!,
                        SurfaceArea: data["SurfaceArea"]!,
                        Title: data["Title"]!,
                        image: data["image"]!,
                        About: data["About"]!,
                      ),
                      planet: planetName,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}