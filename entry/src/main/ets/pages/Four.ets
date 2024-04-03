let TAG: string = "MZLog";

@Entry
@Component
struct Four {
  build() {
    Column({space:20}){
      Text('item1 ')
      Text('item2 ')
      Text('item3 ')
      Text('item4 ')
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(HorizontalAlign.Center)
  }
}