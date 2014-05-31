part of timecard_client;

@Component(
  selector: "edit_user-component",
  templateUrl: "packages/timecard_client/component/edit_user.html",
  useShadowDom: false,
  publishAs: "c"
)
class EditUserComponent {
  @NgTwoWay("a")
  var a;
  @NgTwoWay("me")
  var me;

  Completer _completer;

  bool get isCompleted {
    if (_completer == null) {
      return true;
    } else {
      return _completer.isCompleted;
    }
  }

  void me_update() {
    _completer = a.me_update();
  }
}

class EditUserModule extends Module {
  EditUserModule() {
    type(EditUserComponent);
  }
}
