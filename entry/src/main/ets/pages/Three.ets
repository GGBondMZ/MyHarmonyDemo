@Entry
@Component
struct Three {
  build() {
    Column() {
      Text('设备列表')
        .fontSize(20)
        .textAlign(TextAlign.Center)
        .backgroundColor(Color.Blue)
        .margin({
          left: 5
        })

      // Row() {
      //   Text('灯光1 ')
      //     .fontSize(20)
      //     .backgroundColor(Color.Green)
      //     .textAlign(TextAlign.Center)
      //     .margin({
      //       left: 5
      //     })
      //   Text('空调1 ')
      //     .fontSize(20)
      //     .backgroundColor(Color.Pink)
      //     .textAlign(TextAlign.Center)
      //     .margin({
      //       left: 5
      //     })
      //   Text('灯光2 ')
      //     .fontSize(20)
      //     .backgroundColor(Color.Red)
      //     .textAlign(TextAlign.Center)
      //     .margin({
      //       left: 5
      //     })
      //   Text('灯光3 ')
      //     .fontSize(20)
      //     .backgroundColor(Color.Yellow)
      //     .textAlign(TextAlign.Center)
      //     .margin({
      //       left: 5
      //     })
      //   Text('灯光4 ')
      //     .fontSize(20)
      //     .backgroundColor(Color.Brown)
      //     .textAlign(TextAlign.Center)
      //     .margin({
      //       left: 5
      //     })
      // }
      // .margin({ top: 5 })
      // .width('100%')

      Row() {
        Text('灯光1 ')
          .fontSize(20)
          .backgroundColor(Color.Green)
          .textAlign(TextAlign.Center)
          .margin({
            left: 5
          })
      }.width('100%')

      Text('HarmonyOS是新一代的智能终端操作系统，为不同设备的智能化、互联与协同提供了统一的语言，为用户带来简捷，流畅，连续，安全可靠的全场景交互体验。为进一步帮助开发者快速、准确、全面的了解HarmonyOS核心技术理念，我们将通过系列在线课程，为您提供更便捷的学习与在线交流平台。')
        .fontSize(15)
        .margin({
          top: 5
        })
        .lineHeight(25)
        .maxLines(3)
        .textOverflow({
          overflow: TextOverflow.Ellipsis
        })

      Image($r('app.media.icon'))
        .width('25%')
        .height('5%')
        .autoResize(true)
        .objectFit(ImageFit.Contain)

      Image('https://www.itheima.com/images/logo.png')
        .width('25%')
        .height('5%')
        .autoResize(true)
        .objectFit(ImageFit.Contain)

      TextInput()
        .margin({ top: 5 })
      TextInput()
        .margin({ top: 10 })
    }
    .width('100%')
    .backgroundColor('#1aa1a1a1')
    .padding(5)
  }
}