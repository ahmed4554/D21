import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project/models/object_detection/object_detection.dart';

import '../../../network/dio_helper/dio_helper.dart';
import 'data_states.dart';

class DataCubit extends Cubit<DataStates> {
  DataCubit() : super(InitialDataState());
  static DataCubit get(context) => BlocProvider.of(context);

  File? image;

  final imagePicker = ImagePicker();

  ObjectDetection? objectDetection;

  uploadImage() async {
    var pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 100,
      maxWidth: 400,
      maxHeight: 500,
    );

    if (pickedImage != null) {
      emit(ImageCapturedSuccess());
      log(pickedImage.path);
      image = File(pickedImage.path);
      log(image!.path);
      FormData data = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          image!.path,
          filename: image!.path.split('/').last,
        )
      });
      try {
        emit(ObjectDetectionLoading());
        Response response = await DioHelper.uploudImageToDetect(data);
        objectDetection = ObjectDetection.fromJson(response.data);
        emit(ObjectDetectionSuccess());
        log((objectDetection!
                .results![0].entities![0].objects![0].entities![0].classes!.keys)
            .toString());
                    log((objectDetection!
                .results![0].entities![0].objects![0].entities![0].classes!.values)
            .toString());
        // log(response.data.toString());
      } catch (e) {
        emit(ObjectDetectionFailed(error: e.toString()));
        rethrow;
      }
    } else {
      emit(ImageCapturedFailed());
    }
  }

  uploadGImage() async {
    var pickedImage = await imagePicker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 400,
      maxHeight: 800,
    );

    if (pickedImage != null) {
      emit(ImageCapturedSuccess());
      image = File(pickedImage.path);
      FormData data = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          image!.path,
          filename: image!.path.split('/').last,
        ),
      });

      log(data.files[0].key.toString());
      try {
        emit(ObjectDetectionLoading());
        Response response = await DioHelper.uploudImageToDetect(data);
        objectDetection = ObjectDetection.fromJson(response.data);
        emit(ObjectDetectionSuccess());
        log((objectDetection!
                .results![0].entities![0].objects![0].entities![0].classes)
            .toString());
                    log((objectDetection!
                .results![0].entities![0].objects![0].box![2])
            .toString());
        // log(response.data.toString());
      } catch (e) {
        emit(
          ObjectDetectionFailed(
            error: e.toString(),
          ),
        );
        rethrow;
      }
    } else {
      emit(ImageCapturedFailed());
    }
  }
}
