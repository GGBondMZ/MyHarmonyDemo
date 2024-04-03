// 数据类型
let TAG: string = "MZLog";
console.log('MZ', 'Hello Harmony0');
console.log('MZ', 'Hello Harmony1');
let str1: string = '奥利奥水果捞';
console.log(TAG, str1);
let price: number = 80;
console.log(TAG, price);
let isSelect: boolean = false;
console.log(TAG, isSelect);
const PI: number = 3.14;
console.log(TAG, "PI = " + PI);

//数组
let nums1: number[] = [1, 2, 3, 4, 5, 8]
console.log(TAG, nums1)
let names1: string[] = ['11', 'ss', 'rt']
console.log(TAG, names1)
console.log(TAG, "数组names1长度: " + names1.length);

// 函数
function fn1() {
  console.log(TAG, "-")
  console.log(TAG, "--")
  console.log(TAG, "---")
  console.log(TAG, "----")
  console.log(TAG, "-----")
  console.log(TAG, "------")
}

fn1();
fn1();

function buy(price: number, num: number) {
  let num_price: number = price * num
  console.log(TAG, "price sum = " + num_price)
}

buy(100, 5)
buy(200, 3)

let test1 = () => {
  console.log(TAG, "test1")
}
test1()

let buyApple = (price: number, num: number) => {
  let num_price: number = price * num
  console.log(TAG, "buy Apple price sum = " + num_price)
}
buyApple(5, 10)

interface Person {
  name: string
  age: number
  weight: number
  sing: (song: string) => void,
  dance: () => void
}

let person: Person = {
  name: 'mz',
  age: 25,
  weight: 80,
  sing: (song: string) => {
    console.log(TAG, "sing a song " + song);
  },
  dance: () => {
    console.log(TAG, "dance dance dance");
  }
}
console.log(TAG, JSON.stringify(person));
console.log(TAG, "mz name = " + person.name);
console.log(TAG, "mz age = " + person.age);
console.log(TAG, "mz weight = " + person.weight);

person.sing("hahaha")
person.dance()

interface Chicken {
  dance: () => void,
  sing: (song: string) => void
}

// 枚举
enum ThemeColor {
  Red = "#fff1",
  Green = "#f2f2",
  Blue = "#f33"
}

let color1: ThemeColor = ThemeColor.Red;
console.log(TAG, "Theme color1 = " + color1)
console.log(TAG, "Theme color2 = " + ThemeColor.Green)

import { fn } from '../tools/demo'

fn()

import { fn11 } from '../tools/demo'

fn11()

import res1 from '../tools/demo'

console.log(TAG, "res = " + res1);
import router from '@ohos.router'

@Entry // 入口
@Component // 组件
struct Index { // 自定义组件
  @State message: string = 'Hellooooo'
  @State message1: string = 'Hellllllllll'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
        // 添加按钮1，以响应用户点击
        Button() {
          Text('Next1')
            .fontSize(20)
            .fontWeight(FontWeight.Regular)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)
          router.pushUrl({ url: 'pages/Three' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })

        // 添加按钮2，以响应用户点击
        Button() {
          Text('Next2')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')

        //text
        Text(TAG + " Test")
          .fontSize(25)
          .fontWeight(FontWeight.Regular)
      }
      .width('100%')
    }
    .height('100%')
  }
}