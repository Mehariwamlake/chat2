import 'dart:io';

import 'package:chat2/storage/domain/repository/cloud_storage_repository.dart';

class UploadGroupImageUseCase {
  final CloudStorageRepository repository;

  UploadGroupImageUseCase({required this.repository});

  Future<String> call({required File file}) async {
    return repository.uploadGroupImage(file: file);
  }
}
