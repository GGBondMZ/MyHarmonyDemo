let TAG: string = "MZLog";

class Item {
  name: string
  image: ResourceStr
  status: number
  colorTemperature: number

  constructor(name: string, image: ResourceStr, status: number, colorTemperature: number = 0) {
    this.name = name
    this.image = image
    this.status = status
    this.colorTemperature = colorTemperature
  }
}

@Entry
@Component
struct Four {
  private items: Array<Item> = [
    new Item("灯光001", $r('app.media.knx_light'), 1, 50),
    new Item("灯光002", $r('app.media.knx_light'), 0),
    new Item("灯光003", $r('app.media.knx_light'), 1, 80),
    new Item("灯光004", $r('app.media.knx_light'), 0),
  ]

  build() {
    Column({ space: 8 }) {
      Row() {
        Text('设备列表')
          .fontSize(35)
          .fontWeight(FontWeight.Bold)
      }
      .padding(10)
      .width('100%')
      .justifyContent(FlexAlign.Start)

      ForEach(
        this.items,
        (item) => {
          Row() {
            Image(item.image)
              .width(100)

            Column() {
              Text(item.name)
                .fontSize(15)
                .fontWeight(FontWeight.Bold)

              Text('状态：' + item.status)
                .fontSize(15)
                .fontWeight(FontWeight.Bold)
                .margin({ top: 10 })
              if (item.colorTemperature) {
                Text('色温：' + item.colorTemperature)
                  .fontSize(15)
                  .fontWeight(FontWeight.Bold)
              } else {
                Text('色温：' + 'null')
                  .fontSize(15)
                  .fontWeight(FontWeight.Bold)
              }
            }
            .margin({ left: 5 })
            .justifyContent(FlexAlign.Start)
            .alignItems(HorizontalAlign.Start)
          }
          .width('100%')
          .height(120)
          .padding(5)
          .margin({ left: 10 })
        }
      )
    }
    .width('100%')
    .height('100%')
    .backgroundColor("#80efefef")
  }
}