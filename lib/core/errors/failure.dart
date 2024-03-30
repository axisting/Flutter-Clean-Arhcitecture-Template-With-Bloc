abstract class Failure {
  final String errorMessage;
  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({String errorMessage = 'There is a server exception'})
      : super(errorMessage: errorMessage);
}

class CacheFailure extends Failure {
  CacheFailure({String errorMessage = 'There is a cache exception'})
      : super(errorMessage: errorMessage);
}

class NullPointerFailure extends Failure {
  NullPointerFailure(
      {String errorMessage = 'There is a null pointer exception'})
      : super(errorMessage: errorMessage);
}

class StateManagementFailure extends Failure {
  StateManagementFailure(
      {String errorMessage = 'State management error occurred'})
      : super(errorMessage: errorMessage);
}
