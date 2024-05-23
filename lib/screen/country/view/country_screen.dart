import 'package:flutter/material.dart';
import 'package:jason_practice/screen/country/provider/country_provider.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  CountryProvider? providerR;
  CountryProvider? providerW;

  @override
  void initState() {
    super.initState();

    context.read<CountryProvider>().getCountryData();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<CountryProvider>();
    providerR = context.read<CountryProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Country Json"),
      ),
      body: ListView.builder(
        itemCount: providerW!.countryList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
                providerW!.countryList[index].flagsModel!.png!,
                fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
