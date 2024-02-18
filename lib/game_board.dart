import 'package:chess/components/piece.dart';
import 'package:chess/components/square.dart';
import 'package:chess/helper/helper_method.dart';
import 'package:flutter/material.dart';


class GameBoard extends StatefulWidget {
  const GameBoard ({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {

  // create a piece
  ChessPiece myPawn = ChessPiece(type: ChessPieceType.pawn, isWhite: true, imagePath: 'lib/assets/pawn.png');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8 * 8,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
        itemBuilder: (context, index) {
          return Square(
            isWhite: isWhite(index),
            piece: myPawn,
          );
        },
      ),
    );
  }
}