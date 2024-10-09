// @Preview
import { router } from '@kit.ArkUI'

@CustomDialog
export default struct UserPrivacyDialog {
  controller: CustomDialogController = new CustomDialogController({ builder: '' })
  cancel: Function = () => {
    console.log('点击了不同意')
  }
  confirm: Function = () => {
    console.log('点击了同意')
  }

  build() {
    Column({space: 10}) {
      Text($r('app.string.welcome_title'))
        .fontSize(20)
        .fontWeight(800)
        .margin({top: 8, bottom: 5})
      Text() {
        Span($r('app.string.welcome_span_one'))
      }
      Text() {
        Span($r('app.string.welcome_span_two'))
        Span($r('app.string.personal_privacy_protocol'))
          .fontColor($r('app.color.privacy_color'))
        Span($r('app.string.welcome_span_three'))
        Span($r('app.string.user_protocol'))
          .fontColor($r('app.color.privacy_color'))
        Span($r('app.string.welcome_span_four'))
      }
      Text() {
        Span($r('app.string.welcome_span_end'))
      }
      Button('同意')
        .fontColor(Color.White)
        .backgroundColor("#ff06ae27")
        .width(150)
        .onClick(() => {
          this.confirm()
          this.controller.close()
          router.pushUrl({
            url: ''
          })
        })
        .backgroundImagePosition({ x: 0, y: '0' })
      Button('不同意')
        .fontColor("#d09d9d9d")
        .backgroundColor("#412ef550")
        .width(150)
        .onClick(() => {
          this.cancel()
          this.controller.close()
        })
    }
    .width('80%')
    .height('70%')
  }
}