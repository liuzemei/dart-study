main() {
  task() {
    return Future.delayed(Duration(seconds: 2), () {
      print("hello");
    });
  }

  login(String userName) async {
    await task();
    print("world");
  }

  login("userName");
}
