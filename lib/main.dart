import 'dart:core';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sln_auto/Pages/CategoriePiece.dart';
import 'package:sln_auto/Pages/CategorieVoiture.dart';
import 'package:sln_auto/Pages/Client/CategorieDeVoiture.dart';
import 'package:sln_auto/Pages/Client/CatigorieDePiece.dart';
import 'package:sln_auto/Pages/Client/DetailsDePiece.dart';
import 'package:sln_auto/Pages/Client/DetailsDeVoiture.dart';
import 'package:sln_auto/Pages/Client/EditProfile.dart';
import 'package:sln_auto/Pages/DetailsPiece.dart';
import 'package:sln_auto/Pages/DetailsVoiture.dart';
import 'package:sln_auto/Pages/Inscriptions.dart';
import 'package:sln_auto/Pages/Client/InseriPiece.dart';
import 'package:sln_auto/Pages/Client/InseriVoiture.dart';
import 'package:sln_auto/Pages/Client/ListPiece.dart';
import 'package:sln_auto/Pages/Client/ListVoiture.dart';
import 'package:sln_auto/Pages/List_de_Voitures.dart';
import 'package:sln_auto/Pages/Login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sln_auto/Pages/Remerciements.dart';
import 'Pages/List_de_Piece.dart';
late List<CameraDescription> cameras;

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/CategorieListVoitures',
    routes: {
      '/login': (context) => Login(),
      '/Inscription': (context) => Inscription(),
      '/CategorieListVoitures':(context)=>CategorieListVoitures(),
      '/ListVoiture': (context) => ListVoiture(),
      '/DetailsVoiture' : (context)=>DetailsVoiture(),
      '/CategorieListPieces':(context)=>CategorieListPieces(),
      '/ListPiece':(context)=>ListPiece(),
      '/DetailsPiece':(context)=>DetailsPiece(),
      '/InseriVoiture':(context)=>InseriVoiture(),
      '/InseriPiece':(context)=>InserPiece(),
      '/ListsVoiture':(context)=>ListsVoiture(),
      '/ListsPiece':(context)=>ListsPiece(),
      '/CategorieDeListVoitures':(context)=>CategorieDeListVoitures(),
      '/CategorieDeListPieces':(context)=>CategorieDeListPieces(),
      '/DetailsDeVoiture':(context)=>DetailsDeVoiture(),
      '/DetailsDePiece':(context)=>DetailsDePiece(),
      '/EditProfile':(context)=>EditProfilePage(),
      '/Remerciements':(context)=>Remerciements(),
    },
  )
  );
  await Firebase.initializeApp();
}
