@Entry
@Component
struct Five {
  build() {
    Flex({direction: FlexDirection.ColumnReverse,wrap: FlexWrap.NoWrap}) {
      Text('Text1')
        .fontSize(16)
        .padding(10)
        .backgroundColor("#aabbcc")
      Text('Text2')
        .fontSize(16)
        .padding(10)
        .backgroundColor("#bbaacc")
      Text('Text3')
        .fontSize(16)
        .padding(10)
        .backgroundColor("#ccaabb")
      Text('Text4')
        .fontSize(16)
        .padding(10)
        .backgroundColor("#abcabc")
    }
    .width('100%')
    .height(60)
    .backgroundColor(Color.Pink)
    }
}