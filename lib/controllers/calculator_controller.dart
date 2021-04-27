import 'package:calculadorapisos/helpers/parse_helper.dart';
import 'package:calculadorapisos/models/floor_model.dart';
import 'package:calculadorapisos/models/result_model.dart';
import 'package:calculadorapisos/models/room_model.dart';

class CalculatorController {
  final _room = RoomModel();
  final _floor = FloorModel();
  void setRoomWidth(String value) {
    _room.width = ParseHelper.toDouble(value);
  }

  void setRoomLength(String value) {
    _room.length = ParseHelper.toDouble(value);
  }

  void setFloorWidth(String value) {
    _floor.width = ParseHelper.toDouble(value);
  }

  void setFloorLength(String value) {
    _floor.lenght = ParseHelper.toDouble(value);
  }

  void setFloorPrice(String value) {
    _floor.price = ParseHelper.toDouble(value);
  }

  void resetFields() {
    _floor.lenght = 0;
  }

  ResultModel calculate() {
    return ResultModel(
      piecesByWidth: (_room.width / _floor.width).ceil(),
      piecesByLength: (_room.length / _floor.lenght).ceil(),
      areaFloor: _floor.lenght * _floor.width,
      totalPrice: _floor.price,
    );
  }
}
