abstract class DataStates {}

class InitialDataState extends DataStates {}

class ImageCapturedSuccess extends DataStates {}

class ImageCapturedFailed extends DataStates {}

class ObjectDetectionLoading extends DataStates {}

class ObjectDetectionSuccess extends DataStates {}

class ObjectDetectionFailed extends DataStates {
  final String error;
  ObjectDetectionFailed({
    required this.error,
  });
}
