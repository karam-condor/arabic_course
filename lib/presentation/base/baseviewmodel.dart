abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  //Shared Variables and functions that will be used through any view model.
}

abstract class BaseViewModelInputs {
  void start(); //start view model job

  void dispose(); //will be called when view model dies
}

abstract mixin class BaseViewModelOutputs {
  //Will be implemented later
}
