import UserPrivacyDialog from '../dialog/UserPrivacyDialog'
import common from '@ohos.app.ability.common'
// import data_preferences from '@ohos.data.preferences'

//定义常量存储首选项中的键
// const H_STORE: string = 'BaiZhanKeepStore'
// const IS_PRIVACY: string = 'isPrivacy'

@Entry
@Component
struct SplashIndex {
  context: common.UIAbilityContext = getContext(this) as common.UIAbilityContext;
  dialogController: CustomDialogController = new CustomDialogController({
    builder: UserPrivacyDialog({

    })
  })
  aboutToAppear(): void {
    this.dialogController.open()
  }
  build() {
    Column() {
      Image($r('app.media.logo')).width(100).margin({top: 120})
      Text('欢迎进入晓鸿健身')
        .fontSize(15)
        .fontColor('#182431')
        .fontWeight(700)
        .opacity(0.7)
        .margin({top: 20, bottom: 110})
      Image($r('app.media.titlePhoto'))
        .width('80%')
    }
    .width('100%')
    .height('100%')
    .backgroundImage($r('app.media.welcomeBg'))
    .backgroundImageSize({width: '100%', height: '100%'})
    .backgroundImagePosition({x: 0, y: 0})
  }
}
