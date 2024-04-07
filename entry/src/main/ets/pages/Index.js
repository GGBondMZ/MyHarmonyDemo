// 数据类型
let TAG = "MZLog";
console.log('MZ', 'Hello Harmony0');
console.log('MZ', 'Hello Harmony1');
let str1 = '奥利奥水果捞';
console.log(TAG, str1);
let price = 80;
console.log(TAG, price);
let isSelect = false;
console.log(TAG, isSelect);
const PI = 3.14;
console.log(TAG, "PI = " + PI);
//数组
let nums1 = [1, 2, 3, 4, 5, 8];
console.log(TAG, nums1);
let names1 = ['11', 'ss', 'rt'];
console.log(TAG, names1);
console.log(TAG, "数组names1长度: " + names1.length);
// 函数
function fn1() {
    console.log(TAG, "-");
    console.log(TAG, "--");
    console.log(TAG, "---");
    console.log(TAG, "----");
    console.log(TAG, "-----");
    console.log(TAG, "------");
}
fn1();
fn1();
function buy(price, num) {
    let num_price = price * num;
    console.log(TAG, "price sum = " + num_price);
}
buy(100, 5);
buy(200, 3);
let test1 = () => {
    console.log(TAG, "test1");
};
test1();
let buyApple = (price, num) => {
    let num_price = price * num;
    console.log(TAG, "buy Apple price sum = " + num_price);
};
buyApple(5, 10);
let person = {
    name: 'mz',
    age: 25,
    weight: 80,
    sing: (song) => {
        console.log(TAG, "sing a song " + song);
    },
    dance: () => {
        console.log(TAG, "dance dance dance");
    }
};
console.log(TAG, JSON.stringify(person));
console.log(TAG, "mz name = " + person.name);
console.log(TAG, "mz age = " + person.age);
console.log(TAG, "mz weight = " + person.weight);
person.sing("hahaha");
person.dance();
// 枚举
var ThemeColor;
(function (ThemeColor) {
    ThemeColor["Red"] = "#fff1";
    ThemeColor["Green"] = "#f2f2";
    ThemeColor["Blue"] = "#f33";
})(ThemeColor || (ThemeColor = {}));
let color1 = ThemeColor.Red;
console.log(TAG, "Theme color1 = " + color1);
console.log(TAG, "Theme color2 = " + ThemeColor.Green);
import { fn } from '../tools/demo';
fn();
import { fn11 } from '../tools/demo';
fn11();
import res1 from '../tools/demo';
console.log(TAG, "res = " + res1);
import router from '@ohos.router';
struct Index extends   {
    constructor(// 数据类型
    // 数据类型
    // 数据类型
    ) {
        // 数据类型
    }
    build() {
            .height('100%');
    }
}
//# sourceMappingURL=Index.js.map