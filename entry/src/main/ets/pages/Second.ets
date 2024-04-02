import router from '@ohos.router';
import url from '@ohos.url';

let TAG: string = "MZLog";

@Entry
@Component
struct Second {
  @State message: string = "Hi there!"

  build() {
    Row() {
      Column() {

        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text("back")
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({ top: 20 })
        .backgroundColor("#0D9FFB")
        .width("40%")
        .height("5%")
        .onClick(() => {
          console.log(TAG, "back button onclick")
          // router.pushUrl({ url: 'pages/Index' })
          try {
            router.back()
          } catch (err) {
            console.error(TAG, "back error: " + err)
          }
        })

      }.width("100%")
    }.height("100%")
  }
}