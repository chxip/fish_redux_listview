import 'dart:collection';

class AppManager {
  static LinkedHashMap _routeNameMap = new LinkedHashMap();

  static addRoute(String routeName) {
    _routeNameMap[routeName] = "1";
  }

  static deleteRoute(String routeName) {
    _routeNameMap.remove(routeName);
  }

  static String getCurrentRoute() {
    String _currentRouteName;
    for (var key in _routeNameMap.keys) {
      _currentRouteName = key;
    }
    return _currentRouteName;
  }
}
