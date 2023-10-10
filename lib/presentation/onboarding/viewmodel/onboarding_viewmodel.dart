import 'dart:async';

import 'package:arabic_app/domain/models.dart';
import 'package:arabic_app/presentation/base/baseviewmodel.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // Stream Controller

  StreamController _streamController = StreamController<SliderViewObject>();

  @override
  void start() {}

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChanged() {
    // TODO: implement onPageChanged
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => throw UnimplementedError();

  @override
  // TODO: implement outputSliderViewObject
  Stream get outputSliderViewObject => throw UnimplementedError();
}

//Inputs mean that "Orders" that our view model will recieve from view
abstract mixin class OnBoardingViewModelInputs {
  void goNext(); // When user click on the right arrow or swipe left
  void goPrevious(); // When user click on the left arrow or swipe right
  void onPageChanged();

  // stream controller input
  Sink get inputSliderViewObject;
}

abstract mixin class OnBoardingViewModelOutputs {
  Stream get outputSliderViewObject;
}
