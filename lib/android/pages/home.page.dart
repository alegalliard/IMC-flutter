import 'package:flutter/material.dart';
import 'package:material/ui/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('imc'),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding:EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'altura (cm)'
            ),
            controller: bloc.heightCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding:EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'peso (kg)'
            ),
            controller: bloc.weightCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            bloc.result
          ),
        ),
        Padding(
          padding:EdgeInsets.all(20),
          child: FlatButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              'Calcular',
              style: TextStyle(
                color: Colors.white
              )
            ),
            onPressed: () {
              setState(() {
                bloc.calculate();
              });
            },
          )
        )
      ],
      ),
    );
  }
}