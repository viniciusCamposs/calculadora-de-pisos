class ResultModel {
  double areaFloor;
  int piecesByLength;
  int piecesByWidth;
  double totalPrice;

  ResultModel(
      {this.areaFloor = 0.0,
      this.piecesByLength = 0,
      this.piecesByWidth = 0,
      this.totalPrice = 0.0});

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFooter => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFooter;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double get ttPrice => totalPrice * amountPiecesAndFooter;
}
