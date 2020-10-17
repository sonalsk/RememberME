import 'package:scoped_model/scoped_model.dart';

class MainModel extends Model {
  int _finalScore = 0;
  int _emoScore = 0;

  int get finalScore {
    return _finalScore;
  }

  int get emoScore {
    return _emoScore;
  }

  void addScore(int score) {
    _finalScore += score;
    notifyListeners();
  }

  void addEmoScore(int score) {
    _emoScore += score;
    notifyListeners();
  }
}
