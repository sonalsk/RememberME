import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model {
  int _finalScore = 0;

  int get finalScore {
    return _finalScore;
  }

  void addScore(int score) {
    _finalScore += score;
    notifyListeners();
  }
}
