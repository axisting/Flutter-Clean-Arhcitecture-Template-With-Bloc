part of 'template_bloc.dart';

// State
abstract class TemplateState {}

class TemplateInitialState extends TemplateState {}

final class TemplateLoadedState extends TemplateState {
  final TemplateEntity template;

  TemplateLoadedState(this.template);
}

final class TemplateErrorState extends TemplateState {
  final Failure error;

  TemplateErrorState(this.error);
  @override
  String toString() {
    return error.errorMessage;
  }
}
