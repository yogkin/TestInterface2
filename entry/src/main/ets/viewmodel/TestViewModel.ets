import { AnyChatLinkCloseEvent } from '../interface/AnyChatLinkCloseEvent';



class IndexB {
   message: string = 'Hello World';
   anyChatLinkCloseEvent: AnyChatLinkCloseEvent = null;

  setAnyChatLinkCloseEvent(event: AnyChatLinkCloseEvent): void {
    this.anyChatLinkCloseEvent = event;
  }

  trigger(): void {
    if (this.anyChatLinkCloseEvent!=null) {
      this.anyChatLinkCloseEvent(200,'success---');
    }
  }
  //  build() {
  //    Row() {
  //      Column() {
  //        Text(this.message)
  //          .fontSize(50)
  //          .fontWeight(FontWeight.Bold)
  //          .onClick(() => {
  //            console.log("点击了-----")
  //            if (this.anyChatLinkCloseEvent!=null) {
  //              this.anyChatLinkCloseEvent.onLinkCloseStatus(200,'success---');
  //            }
  //          })
  //      }
  //      .width('100%')
  //    }
  //    .height('100%')
  //  }
}

export let indexB=new IndexB()
