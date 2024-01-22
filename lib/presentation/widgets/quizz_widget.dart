import 'package:flutter/material.dart';
import 'package:proyecto_m6/models/question_model.dart';


Widget questionWidget(
    QuestionModel questionModel, void Function() function, bool presed) {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        height: 220.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${questionModel.question}",
            style: const TextStyle(
             // color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
      ),
      for (int i = 0; i < questionModel.answers!.length; i++)
        Container(
          width: double.infinity,
          height: 50.0,
          margin: const EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
          child: RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            onPressed: function,
            child: Text(questionModel.answers!.keys.toList()[i]),
          ),
        )
    ],
  );
}
