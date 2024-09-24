import { showToast } from '../component/dialog/toast/Toast';
import { CustomStyleParms } from '../models/styles';

@Entry
@Component
struct Index {
  build() {
    RelativeContainer() {
      Column() {
        // 计分面板
        Column() {
          Row() {
            Text("11111")
          }

          Row() {
            Text("11111")
          }

          Row() {
            Text("11111")
          }

          Row() {
            Text("11111")
          }
        }.statedStyle()

        // 单词展示
        Column() {
          Text("单词")
            .wordStyle()
          Text("sdhksfkjshfkjsdjhsjdhfksjdhfk")
            .wordDescStyle()
        }

        // 选项
        Column() {
          Button("11111")
            .optionStyle()
          Button("11111")
            .optionStyle()
          Button("11111")
            .optionStyle()
          Button("11111")
            .optionStyle()
        }

        // 按钮
        Row() {
          Button('结束测试')
            .bottomCommitButtonStyle(
              new CustomStyleParms(Color.Transparent, Color.Gray, Color.Black)
            ).onClick(
            () => {
              showToast('结束测试')
            }
          )

          Button('开始测试')
            .margin({ left: 50 })
            .bottomCommitButtonStyle(
              new CustomStyleParms(Color.Black, Color.Black, Color.White)
            ).onClick(
            () => {
              showToast('开始测试')
            }
          )
        }
      }
      .practiceBgStyle()
    }
    .height('100%')
    .width('100%')
  }
}

@Extend(Column)
function practiceBgStyle() {
  .width('100%')
  .height('100%')
  .backgroundImage($r('app.media.img_practice_bg'))
  .backgroundImageSize({ width: '100%', height: '100%' })
  .justifyContent(FlexAlign.SpaceEvenly)
}

// 计分状态的背景
@Styles
function statedStyle() {
  .backgroundColor(Color.White)
  .width("90%")
  .borderRadius(10)
  .padding(20)
}

// 单词的样式
@Extend(Text)
function wordStyle() {
  .fontSize(50)
  .fontWeight(FontWeight.Bold)
}

// 单词地下的描述文本样式
@Extend(Text)
function wordDescStyle() {
  .height(40)
  .fontColor("#999999")
  .textAlign(TextAlign.Center)
  .fontWeight(FontWeight.Medium)
  .width("80%")
}

// 选项按钮的样式
@Extend(Button)
function optionStyle() {
  .width("70%")
  .height(48)
  .fontSize(16)
  .fontColor(Color.Black)
  .backgroundColor(Color.White)
  .borderRadius(8)
  .margin({ top: 12 })
  .type(ButtonType.Normal)
}

@Extend(Button)
function bottomCommitButtonStyle(params: CustomStyleParms) {
  .fontSize(16)
  .fontColor(params.fontColor)
  .backgroundColor(params.bg)
  .borderColor(params.border)
  .borderWidth(1)
  .borderRadius(8)
  .margin({ left: 20 })
}