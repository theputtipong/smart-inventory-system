import 'package:dart_frog/dart_frog.dart';
import 'feedback_model.dart';
import 'feedback_service.dart';

final feedbackService = FeedbackService();

Handler feedbackHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final feedback = Feedback.fromJson(data.toString());
    feedbackService.addFeedback(feedback);
    return Response.json(body: {'message': 'Feedback added successfully'});
  }

  // Implement other methods for update, delete, and fetch feedbacks

  return Response.json(body: feedbackService.feedbacks);
};
