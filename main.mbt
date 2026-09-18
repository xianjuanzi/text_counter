// 简易文本统计工具：统计字符、汉字、英文、标点
fn main {
  println("===== MoonBit文本计数器 =====")
  println("请输入需要统计的文本：")
  
  //读取控制台输入
  let input_text = read_line()
  
  var total_chars = 0
  var chinese_count = 0
  var english_count = 0
  var symbol_count = 0

  //遍历每一个字符
  for c in input_text.chars() {
    total_chars = total_chars + 1
    if c >= '\u4e00' && c <= '\u9fff' {
      chinese_count = chinese_count + 1
    } else if (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') {
      english_count = english_count +1
    } else {
      symbol_count = symbol_count + 1
    }
  }

  //输出统计结果
  println("\n--------统计结果--------")
  println("总字符数：\(total_chars)")
  println("汉字数量：\(chinese_count)")
  println("英文字母：\(english_count)")
  println("其他标点/符号：\(symbol_count)")
}
