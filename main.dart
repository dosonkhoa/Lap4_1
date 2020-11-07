import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Lab4_1',
    home: FirstRoute(),
    // initialRoute: FirstRoute.FirstRouteName, // chọn màn hình 1 là nàm hình chính
    // routes: { // khai báo , quản lý tên  các route

    //   // chuyển hướng đến nàm hình 1
    //   FirstRoute.FirstRouteName: (context) => FirstRoute(),

    //   // chuyển hướng đến màn hình 2
    //   SecondRoute.SecondRouteName: (context) => SecondRoute(),

    //   // chuyển hướng đến màn hình 3
    //   ThirdRoute.ThirdRouteName: (context) => ThirdRoute(),
    // }
  ));
}

class FirstRoute extends StatelessWidget {
  // // đặt tên cho route 1
  // static const String FirstRouteName = '/'; // lấy route 1 làm mặc định
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Open Second Route'),
            onPressed: () {
              // mở route 2 khi tap vào button

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
              // Navigator.pushNamed(context, SecondRoute.SecondRouteName);
            }),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  // // đặt tên cho route 2
  // static const String SecondRouteName = 'SecondRoute';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('Go Back!'),
                onPressed: () {
                  // quay lại route 1

                  Navigator.pop(context);
                }),
            RaisedButton(
                child: Text('Open Third Route'),
                onPressed: () {
                  // mở route 2 khi tap vào button

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );

                  // Navigator.pushNamed(context, ThirdRoute.ThirdRouteName);
                }),
          ],
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  // // đặt tên cho route 3
  // static const String ThirdRouteName = 'ThirdRoute';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Route'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go Back Second Route'),
            onPressed: () {
              // quay về route 2 khi tap vào button

              Navigator.pop(context);
            }),
      ),
    );
  }
}
