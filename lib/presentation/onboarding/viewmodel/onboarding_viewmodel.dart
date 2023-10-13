import 'dart:async';

import 'package:arabic_app/domain/model/models.dart';
import 'package:arabic_app/presentation/base/baseviewmodel.dart';
import 'package:arabic_app/presentation/resources/assets_manager.dart';
import 'package:arabic_app/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    with OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  // Stream Controller

  final _streamController = StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  int _currentPageIndex = 0;

  @override
  void start() {
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void goNext() {
    var nextIndex = ++_currentPageIndex;
    if (nextIndex == _list.length) nextIndex = 0;
    onPageChanged(nextIndex);
  }

  @override
  void goPrevious() {
    var previousIndex = --_currentPageIndex;
    if (previousIndex == -1) previousIndex = _list.length - 1;
    onPageChanged(previousIndex);
  }

  @override
  void onPageChanged(int index) {
    _currentPageIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  //OnBoarding ViewModel Outputs

  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((event) => event);

  //OnBoarding private functions

  void _postDataToView() {
    inputSliderViewObject.add(SliderViewObject(
        _list[_currentPageIndex], _list.length, _currentPageIndex));
  }

  List<SliderObject> _getSliderData() => [
        SliderObject(AppStrings.onBoardingTitle1,
            AppStrings.onBoardingSubTitle1, ImageAssets.onBoardingLogo1),
        SliderObject(AppStrings.onBoardingTitle2,
            AppStrings.onBoardingSubTitle2, ImageAssets.onBoardingLogo2),
        SliderObject(AppStrings.onBoardingTitle3,
            AppStrings.onBoardingSubTitle3, ImageAssets.onBoardingLogo3),
        SliderObject(AppStrings.onBoardingTitle4,
            AppStrings.onBoardingSubTitle4, ImageAssets.onBoardingLogo4),
      ];
}

//Inputs mean that "Orders" that our view model will recieve from view
abstract mixin class OnBoardingViewModelInputs {
  void goNext(); // When user click on the right arrow or swipe left
  void goPrevious(); // When user click on the left arrow or swipe right
  void onPageChanged(int index);

  // stream controller input
  Sink get inputSliderViewObject;
}

abstract mixin class OnBoardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}
