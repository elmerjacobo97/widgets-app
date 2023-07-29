import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String routeName = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UiControls'),
        ),
        body: const _UiControlsView());
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bus, train, airplane }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Enable developer mode'),
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          }),
      ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By car'),
                subtitle: const Text('Viajar por carro'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.car;
                  });
                }),
            RadioListTile(
                title: const Text('By bus'),
                subtitle: const Text('Viajar por bus'),
                value: Transportation.bus,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.bus;
                  });
                }),
            RadioListTile(
                title: const Text('By Train'),
                subtitle: const Text('Viajar por tren'),
                value: Transportation.train,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.train;
                  });
                }),
            RadioListTile(
                title: const Text('By Airplane'),
                subtitle: const Text('Viajar por avion'),
                value: Transportation.airplane,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.airplane;
                  });
                })
          ]),
      CheckboxListTile(
          title: const Text('¿Wants breakfast?'),
          subtitle: const Text('Wants breakfast?'),
          value: wantsBreakfast,
          onChanged: (value) => {
                setState(() {
                  wantsBreakfast = !wantsBreakfast;
                })
              }),
      CheckboxListTile(
          title: const Text('¿Wants lunch?'),
          subtitle: const Text('Wants lunch?'),
          value: wantsLunch,
          onChanged: (value) => {
                setState(() {
                  wantsLunch = !wantsLunch;
                })
              }),
      CheckboxListTile(
          title: const Text('¿Wants dinner?'),
          subtitle: const Text('Wants dinner?'),
          value: wantsDinner,
          onChanged: (value) => {
                setState(() {
                  wantsDinner = !wantsDinner;
                })
              })
    ]);
  }
}
