import 'package:flutter/material.dart';
import 'package:news/models/espacioParq_model.dart';
import 'dart:math';

import 'package:news/services/espacio_parq_peticion.dart';

class FormularioAsignacioParq extends StatefulWidget {
   final paddingTopForm,
      fontSizeTextField,
      fontSizeTextFormField,
      spaceBetweenFields,
      iconFormSize;
  final spaceBetweenFieldAndButton,
      widthButton,
      fontSizeButton,
      fontSizeForgotPassword,
      fontSizeSnackBar,
      errorFormMessage;

  FormularioAsignacioParq(
      this.paddingTopForm,
      this.fontSizeTextField,
      this.fontSizeTextFormField,
      this.spaceBetweenFields,
      this.iconFormSize,
      this.spaceBetweenFieldAndButton,
      this.widthButton,
      this.fontSizeButton,
      this.fontSizeForgotPassword,
      this.fontSizeSnackBar,
      this.errorFormMessage);


  @override
  State<FormularioAsignacioParq> createState() => _FormularioAsignacioParqState();
}

class _FormularioAsignacioParqState extends State<FormularioAsignacioParq> {
  String nombreOcup;
  String cargoOcup;
  String horaInicio;
  String horaFin;
  String pisoPar;
  var _lista =['Semisotano', 'Sotano'];
  String _vista = "Seleccione el piso donde quiere el espacio de parqueo";


  final _formKey = GlobalKey<FormState>();

  final _nombreOcupController = TextEditingController();
  final _cargoOcupController = TextEditingController();
  final _horaInicioController = TextEditingController();
  final _horaFinController = TextEditingController();
  final _pisoParqController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;
    
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(
          left: widthSize * 0.05,
            right: widthSize * 0.05,
            top: heightSize * widget.paddingTopForm
        ),
        child: Column(
        children: [
           Text(
              'ESPACIO DE PARQUEO',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Poppins',
                  color: Colors.red),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Nombre de Ocupante',
              style: TextStyle(
                fontSize: widthSize*widget.fontSizeTextField,
                fontFamily: 'Poppins',
                color: Colors.red
              ),
            ),
          ),
          TextFormField(
            controller: _nombreOcupController,
             validator: (value) {
              if(value.isEmpty) {
                return "LLene este campo con su nombre";
              }
            },
            cursorColor: Colors.red,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Colors.red,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2), 
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2), 
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              labelStyle: TextStyle(color: Colors.red),
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: widthSize * widget.errorFormMessage
              ),
              prefixIcon: Icon(
                Icons.person,
                size: widthSize * widget.iconFormSize,
                color: Colors.red,
              ),
            ),
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black, fontSize: widget.fontSizeTextFormField
            ),
            onChanged: (value){
              setState(() {
                nombreOcup = value;
              });
            },
          ),
          SizedBox(height: heightSize * widget.spaceBetweenFields),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Cargo de Ocupante',
              style: TextStyle(
                fontSize: widthSize*widget.fontSizeTextField,
                fontFamily: 'Poppins',
                color: Colors.red
              ),
            ),
          ),
          TextFormField(
            controller: _cargoOcupController,
            validator: (value) {
              if(value.isEmpty) {
                return "LLene este campo con su cargo en la Universidad";
              }
            },
            cursorColor: Colors.red,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Colors.red,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2), 
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2), 
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              labelStyle: TextStyle(color: Colors.red),
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: widthSize * widget.errorFormMessage
              ),
              prefixIcon: Icon(
                Icons.person,
                size: widthSize * widget.iconFormSize,
                color: Colors.red,
              ),
            ),
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black, fontSize: widget.fontSizeTextFormField
            ),
            onChanged: (value){
              setState(() {
                cargoOcup = value;
              });
            },
          ),
          SizedBox(height: heightSize * widget.spaceBetweenFields),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hora de Inicio para usar el Parqueo',
              style: TextStyle(
                fontSize: widthSize*widget.fontSizeTextField,
                fontFamily: 'Poppins',
                color: Colors.red
              ),
            ),
          ),
          TextFormField(
            controller: _horaInicioController,
            validator: (value) {
              if(value.isEmpty) {
                return "LLene este campo con el horario de inicio de uso del parqueo";
              }
            },
            cursorColor: Colors.red,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Colors.red,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2), 
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2), 
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              labelStyle: TextStyle(color: Colors.red),
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: widthSize * widget.errorFormMessage
              ),
              prefixIcon: Icon(
                Icons.person,
                size: widthSize * widget.iconFormSize,
                color: Colors.red,
              ),
            ),
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black, fontSize: widget.fontSizeTextFormField
            ),
            onChanged: (value){
              setState(() {
                horaInicio = value;
              });
            },
          ),
          SizedBox(height: heightSize * widget.spaceBetweenFields),
           Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hora de Finalizacion para usar el Parqueo',
              style: TextStyle(
                fontSize: widthSize*widget.fontSizeTextField,
                fontFamily: 'Poppins',
                color: Colors.red
              ),
            ),
          ),
          TextFormField(
            controller: _horaFinController,
            validator: (value) {
              if(value.isEmpty) {
                return "LLene este campo con el horario de finalizacion de uso del parqueo";
              }
            },
            cursorColor: Colors.red,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              fillColor: Colors.red,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2), 
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2), 
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
              ),
              labelStyle: TextStyle(color: Colors.red),
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: widthSize * widget.errorFormMessage
              ),
              prefixIcon: Icon(
                Icons.person,
                size: widthSize * widget.iconFormSize,
                color: Colors.red,
              ),
            ),
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black, fontSize: widget.fontSizeTextFormField
            ),
            onChanged: (value){
              setState(() {
                horaFin = value;
              });
            },
          ),
          SizedBox(height: heightSize * widget.spaceBetweenFields),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Piso',
                  style: TextStyle(
                      fontSize: widthSize * widget.fontSizeTextField,
                      fontFamily: 'Poppins',
                      color: Colors.red),
                ),
              ),
              SizedBox(width: 70),
              DropdownButton(
                items: _lista.map((String a) {
                  return DropdownMenuItem(value: a, child: Text(a));
                }).toList(),
                onChanged: (_value) {
                  setState(() {
                    _vista = _value;
                    pisoPar = _value;
                    _pisoParqController.text = _value;
                  });
                },
                hint: Text(
                  _vista,
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(height: heightSize * widget.spaceBetweenFieldAndButton),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.fromLTRB(
                widget.widthButton, 15, widget.widthButton, 15),
            color: Colors.red,
            onPressed: () async {
              Random random = new Random();
                  int randomNumber = random.nextInt(35);
                  print(randomNumber);

                  await buscarEspParq(randomNumber.toString()).then((value) {
                    String numero = randomNumber.toString();
                    String nombreOcupante = _nombreOcupController.text;
                    String cargo = _cargoOcupController.text;
                    String piso = _pisoParqController.text;
                    String horaInicio = _horaInicioController.text;
                    String horaFin = _horaFinController.text;
                    String estado = 'Asignado';

                    if (numero.isNotEmpty &&
                        nombreOcupante.isNotEmpty &&
                        cargo.isNotEmpty &&
                        piso.isNotEmpty && horaInicio.isNotEmpty
                        && horaFin.isNotEmpty &&
                        estado.isNotEmpty) {
                      EspacioParq esp = new EspacioParq(
                          id: value.id,
                          numero: numero,
                          nombreOcupante: nombreOcupante,
                          cargo: cargo,
                          piso: piso,
                          horaInicio: horaInicio,
                          horaFin: horaFin,
                          estado: estado);
                      modifyEspacioParque(esp).then((value1) {
                        if (value1.id != '') {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text(
                                  'Asignacion de los espacios de Parqueo',
                                  style: TextStyle(color: Colors.white)),
                              content: Text(
                                  'Se le acaba de asignar el parqueo ' +
                                      numero +
                                      ', dirijase hasta el parqueo',
                                  style: TextStyle(color: Colors.white)),
                              actions: [
                                FlatButton(
                                  child: Text('Esta Bien!',
                                      style: TextStyle(color: Colors.black)),
                                  onPressed: () {
                                    _nombreOcupController.text = "";
                                    _cargoOcupController.text = "";
                                    _horaInicioController.text = "";
                                    _horaFinController.text = "";
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      });
                    }
                  });                    
            },
            child: Text(
              'Solicitar un Espacio de Parqueo',
              style: TextStyle(
                  fontSize: widthSize * widget.fontSizeButton,
                  fontFamily: 'Poppins',
                  color: Colors.white),
            ),
          ),
          SizedBox(height: heightSize * 0.01),
          Text('Este es un formulario para la asignacion de Espacio de parqueo Vehicular (la asignacion se hara de manera aleatoria)',
              style: TextStyle(
                  fontSize: widthSize * widget.fontSizeForgotPassword,
                  fontFamily: 'Poppins',
                  color: Colors.red)),
        ],
        ),
      )
    );
  }
}