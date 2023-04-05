import { indexB } from '../viewmodel/TestViewModel';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('点击我啊')
          .onClick(()=>{
            indexB.anyChatLinkCloseEvent= function (errorCode: number,errorMsg: string):void{
              console.log("errorCode:" + errorCode + "errorMsg:" + errorMsg);
            }
            indexB.trigger()
          })
      }
      .width('100%')
    }
    .backgroundColor(Color.Gray)
    .height('100%')
  }
}