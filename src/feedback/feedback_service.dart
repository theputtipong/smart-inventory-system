import '../../extensions/first_where_or_null_extension.dart';
import 'feedback_model.dart';

class FeedbackService {
  final List<Feedback> _feedbacks = [];

  List<Feedback> get feedbacks => _feedbacks;

  void addFeedback(Feedback feedback) {
    _feedbacks.add(feedback);
  }

  void updateFeedback(String id, Feedback updatedFeedback) {
    final index = _feedbacks.indexWhere((feedback) => feedback.id == id);
    if (index != -1) {
      _feedbacks[index] = updatedFeedback;
    }
  }

  void removeFeedback(String id) {
    _feedbacks.removeWhere((feedback) => feedback.id == id);
  }

  Feedback? getFeedbackById(String id) {
    return _feedbacks.firstWhereOrNull((feedback) => feedback.id == id);
  }
}
