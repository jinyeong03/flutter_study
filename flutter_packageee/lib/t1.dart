import 'package:lib/study_lib.dart';

class T1 extends ITextTest {
  List<String> args = [];

  @override
  String get authorName => 'JInyeong';

  @override
  List<String> getOutput(Duration elapsed, Duration delta) {
    List<String> output = <String>[];

    if (args.isEmpty) {
      return [''];
    }

    for (final arg in args) {
      output.add(write(arg));
    }

    return output;
  }

  @override
  void setInput(List<String> args) {
    this.args = args;
  }
 
  String write(String s) {
    final stringBuffer = StringBuffer();
    var num = int.parse(s);
    for (var i = 1; i <= num; i++) {
      stringBuffer.write('♥' * i);
      stringBuffer.write('\n');
    }
    return stringBuffer.toString();
  }
}
