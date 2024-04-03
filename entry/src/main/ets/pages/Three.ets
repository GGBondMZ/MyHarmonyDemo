@Entry
@Component
struct Three {
  @State imageWidth: number = 50

  build() {
    Column() {
      Text('设备列表')
        .fontSize(20)
        .textAlign(TextAlign.Center)
        .backgroundColor(Color.Blue)
        .margin({
          left: 5
        })

      Row() {
        Text('灯光1 ')
          .fontSize(20)
          .backgroundColor(Color.Green)
          .margin({
            left: 5
          })
      }.width('100%').justifyContent(FlexAlign.Center).margin(10)

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
        .width(this.imageWidth)
        .height('10%')
        .autoResize(true)
        .objectFit(ImageFit.Contain)
        .margin(10)

      Image('https://www.itheima.com/images/logo.png')
        .width(this.imageWidth)
        .height('5%')
        .autoResize(true)
        .objectFit(ImageFit.Contain)

      TextInput({ placeholder: '请输入账号' })
        .margin({ top: 5 })
        .type(InputType.Number)
        .onChange((value) => {
          console.log('MZLog account changed + ' + value)
          this.imageWidth = parseInt(value)
          console.log('MZLog imageWidth =  ' + value)
        })

      TextInput({ text: '********' })
        .margin({ top: 10 })
        .backgroundColor(Color.Gray)
        .type(InputType.Password)
        .onChange((value) => {
          console.log('password changed + ' + value)
        })

      Image($r('app.media.moorgen_icon'))
        .width('25%')
        .height('5%')
        .autoResize(true)
        .objectFit(ImageFit.Contain)
        .interpolation(ImageInterpolation.High)

      Divider()

      Image($rawfile('moorgen_icon.png'))
        .width(100)
        .height(50)
        .borderRadius(2)
        .autoResize(true)
        .objectFit(ImageFit.Contain)
        .interpolation(ImageInterpolation.High)

      Button() {
        Text('Button').fontSize(18)
      }.width(80).margin(10).type(ButtonType.Capsule)

      Button() {
        Image($r('app.media.add_icon')).width(20).margin(10)
      }.type(ButtonType.Circle)

      Button('点我')
        .width(100)
        .height(30)
        .type(ButtonType.Normal)
        .margin(10)
        .onClick(() => {
          console.log('MZLog button onclick')
        })

      Slider({
        min: 0,
        max: 100,
        value: 50,
        step: 1, // 滑动步长
        style: SliderStyle.InSet,
        direction: Axis.Horizontal,
        reverse: false
      }).showSteps(true).showTips(true).blockColor('#36d').width('80%')
        .onChange((value) => {
          this.imageWidth = value;
        console.log('MZLog slider onChange value = ' + value)
      })

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#1aa1a1a1')
    .padding(5)
  }
}