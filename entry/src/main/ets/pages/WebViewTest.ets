import webview from '@ohos.web.webview';

@Entry @Component struct WebTest {

  // Web控制器
  private webController: WebviewController = new webview.WebviewController();

  build() {
    Column({ space: 10 }) {

      Text("www.arkui.club")
        .fontSize(25)
        .backgroundColor(Color.Pink)

      Web({
        src: "https://ms.moorgen.com/privacy/smarthome/zh-hans/index.html?theme=white", // 默认加载 www.arkui.club 网址
        controller: this.webController
      })
        .width("100%")
        .height("100%")

    }
    .width('100%')
    .height("100%")
    .padding(10)
  }

}