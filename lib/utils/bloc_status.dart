abstract class BlocStatus {
  const BlocStatus();
}

class Idle extends BlocStatus {
  const Idle();
}

class Loading extends BlocStatus {
  const Loading();
}

class Success extends BlocStatus {
  const Success();
}

class Error extends BlocStatus {
  final dynamic error;
  const Error([this.error]);
}
