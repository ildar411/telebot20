let TeleBot = require('node-telegram-bot-api');
const token = '849218923:AAEN2U7uhVJncM4heEfCM2kwaCL5db9CtIs';//telegram token;
const idAdmin = 598673338;

var callbackQiwi = require('node-qiwi-api').callbackApi;
var Wallet = new callbackQiwi('a1576a11e18701fa6b367f0d1e3983e0');


const QiwiBillPaymentsAPI= require('@qiwi/bill-payments-node-js-sdk');
const SECRET_KEY = 'eyJ2ZXJzaW9uIjoiUDJQIiwiZGF0YSI6eyJwYXlpbl9tZXJjaGFudF9zaXRlX3VpZCI6InR5Ym15dS0wMCIsInVzZXJfaWQiOiI3OTYyNTI2MjMxOCIsInNlY3JldCI6IjkwZTM1YWM3ZDE1N2FmN2QwZTkyNTA1NTc4NDhiY2RjYjI1MzY0YTEyYzFmODczY2UyYjM5YjdkMjk3NDQ5ZjcifX0=';
const public_key = '48e7qUxn9T7RyYE1MVZswX1FRSbE6iyCj2gCRwwF3Dnh5XrasNTx3BGPiMsyXQFNKQhvukniQG8RTVhYm3iPxgmKpt9GKRgmZZcrYEcAukdVJ6k1ncupFhDMxhNPK9ofkM1BA3z7XZtZT4FpDPSgdY84jU4yBwsdJqRefL1HHXew97Mq3LBz4hgpB4CXP';
const qiwiApi = new QiwiBillPaymentsAPI(SECRET_KEY);


let getChild = require('./binaryTree').getChild;
let getWalet = require('./binaryTree').getWalet;
let level = require('./levelUp').levelUp;
let searchUserBool = require('./binaryTree').searchUserBool;
let father = require('./binaryTree').searchUserByPid;
let me = require('./binaryTree').searchUser;
let pay = require('./payment').pay;
const searchUserByPid  = require('./binaryTree').searchUserByPid;


const express = require('express');
const path = require('path');
const fs = require('fs');


const mysql = require('mysql2');
const con = mysql.createConnection({
    host: "127.0.0.1",
    user: "il",
    database: "users",
    password: "il"
  });

const entry = 1000; //вход
const levelUp = 'Повысить уровень';
const Struct = 'Структура';
const Instruction = 'Помощь';
const Walet = 'Кошелек';
const Start = 'Здравствуйте, рады видеть Вас снова!';
const gameName = 'Struct';


function sleep(milliseconds) {
    const date = Date.now();
    let currentDate = null;
    do {
      currentDate = Date.now();
    } while (currentDate - date < milliseconds);
  }

con.connect(function(err){
    if (err) {
        
        return console.error("Ошибка: " + err.message);
    } else {
      
        console.log("Подключение к серверу MySQL успешно установлено");
    
    }
 
});

let bot = new TeleBot(token, { polling: true});

let addUser = async (msg, con, telegramId, pid, waletNumber) => {
    let walet = 700;//вход минус коммисия 
    
    let obj = await pay(telegramId, entry);
    
    let answer = 0;
    
    console.log(obj);
    const chatId = msg.chat.id;
    const nickname = msg.from.username;
    await bot.sendMessage(chatId, 'Ссылка на оплату: ' + obj.link);
    
    //await setInterval(() => {console.log('hui1')}, 30000);//1
    sleep(30000);
    
    await qiwiApi.getBillInfo(obj.random).then(async (data) => {
        console.log(data);
        if(data.status.value == 'PAID'){
            await con.promise().query('INSERT INTO user (pid, walet_number, walet, telegram_id, nickname, level) VALUES (?, ?, ?, ?, ?, 1)',
     [pid, waletNumber, walet, telegramId, nickname])
     .then(async ([res, field]) => {
        
    })
    
    let i = await me(con, telegramId);
    await bot.sendMessage(chatId, 'Реферальная ссылка: ' + 'https://t.me/node0210bot?start=' + i.id);
    answer = 1;
        
        } else {
        
            sleep(60000);
        //await setInterval(() => {console.log('hui2')}, 30000);//2
            await qiwiApi.getBillInfo(obj.random).then( async (data) => {
            console.log(data);
            
            if(data.status.value == 'PAID'){
                await con.promise().query('INSERT INTO user (pid, walet_number, walet, telegram_id, nickname, level) VALUES (?, ?, ?, ?, ?, 1)',
     [pid, waletNumber, walet, telegramId, nickname])
     .then(async ([res, field]) => {
        
     }) 
     
        answer = 1;
            } else {
                
                await bot.on('message', (msg) => {
                const chatId = msg.chat.id;
                bot.sendMessage(chatId, 'Оплата не прошла');
                })
                answer = 0;
            }
            })
        }
    })
    
    return answer;
};

bot.onText(/\/start (\d+)/, async (msg, match) => {
    
    let pid = match[1];
    console.log(pid);
    //let fatherBool = await searchUserBool(con, pid);
    
    let father = (await (searchUserByPid(con, pid)));
    let chatId = msg.chat.id;
    console.log(father);
    //console.log(child);
    if(father.id == pid){
        let child = await getChild(con, father.telegram_id);
        console.log(child);
        if(await getChild(con, father.telegram_id).length <= 2 || child == 0){
            telegramId = msg.from.id;
            
            await bot.sendMessage(msg.chat.id, 'Поздравляю ' + msg.chat.first_name +
                ' Вы успешно зарегистрировались в сетевом маркетинге LTC Generate .' +
                'Мы создаём для Вас litecoin - кошелёк, который будет использоваться LTC Generate и на него вы будете получать Ваш доход.' + 
        
                'В нашем сетевом маркетинге вы получаете продукт по Арбитражу трафика - Бесплатно!  А также в каждом уровне заработок.' +
          
        
                'Осталось сделать последний шаг.' +
                '- необходимо пополнить баланс вашего кошелька на сумму ....' + 
                'и активировать первый уровень.' +
                'Пополнить баланс Вашего  кошелька следуя инструкции снизу');

            let photo = 'img.jpeg';//расположение фото 
            await bot.sendPhoto(msg.chat.id, photo, {caption: 'Таблица прибыли 🔥'+
                    '1 уровень - 0'+ 
                    '2 уровень - 200 руб.'+
                    '3 уровень - 700 руб.'+
                    '4 уровень - 4600 руб.'+
                    '5 уровень - 200 000 руб.'+ 
                    '6 уровень - 1 348 000 руб.'+
                    '7 уровень - 4 463 000 руб.'});
                
                
                
            await bot.sendMessage(msg.chat.id, 'Введите номер телефона qiwi, без восьмерки. Пример: 9998887766');
        
            await bot.on('message', async (msg) => {
                
                if(isFinite(msg.text)){    
                    let bool = await addUser(msg, con, telegramId, pid, msg.text);
                
                    if(bool) {
                
                        let refLink = await level(con, msg.from.id);
                
                        await bot.sendMessage(msg.chat.id, 'Реферальная ссылка: ' + refLink);
                
                        await openKlava(msg.chat.id, Start, msg.from.id);
            
                    }
        
                } else {
            //await bot.sendMessage(msg.chat.id, 'Введите номер телефона qiwi. Пример: 9998887766');
                    await bot.on('message', async (msg) => {
                
                        if(isFinite(msg.text)){
                    
                            let bool1 = await addUser(msg, con, telegramId, pid, msg.text);
                    
                            if(bool1) {
                        
                                let refLink = await level(con, msg.from.id);
                        
                                await bot.sendMessage(chatId, 'Реферальная ссылка: ' + refLink);
                        
                                await openKlava(msg.chat.id, Start, msg.from.id);
                    
                            }
                
                        }
            
                    });
        
                }
    
            });
    
        } else {
       
            await bot.sendMessage(msg.chat.id, 'Зайдите под другой реферальной ссылке');
    
        }

    } else {
    
        await bot.sendMessage(msg.chat.id, 'Битая реферальная ссылка');

    }
        
});



let openKlava = async (chatId, tex, telId) => {
    if(await searchUserBool(con, telId)) {
        console.log((await me(con, telId)).level);
        if((await me(con, telId)).level == 1){
            
            bot.sendMessage(chatId, tex, {
                reply_markup: {
                keyboard: [
                    [ 
                        {
                            text: Struct
                        }
                    ],
                    [
                        {
                            text: Instruction
                        },
                        {
                            text: Walet
                        }
                    ]        
                ],
                one_time_keyboard: false
                }  
            });
        } else {
            
            bot.sendMessage(chatId, tex, {
                reply_markup: {
                keyboard: [
                    [ 
                        {
                            text: Struct
                        }
                    ],
                    [
                        {
                            text: Instruction
                        },
                        {
                            text: Walet
                        }
                    ]        
                ],
                one_time_keyboard: false
                }  
            });
        }
        
    } 
    
}


bot.on('message', async (msg) => {
    console.log(msg);
    
    if(!(/\/start/.test(msg.text))){
        console.log('HHHHUI');
        const chatId = msg.chat.id;
    
        let i = await me(con, msg.from.id);
    
        let waLet = i.walet
    
        let waletNumber = i.walet_number;
    
        if (msg.text) {
        
            if (msg.text == Struct) {
            
                let child = await getChild(con, msg.from.id);
            
                console.log(child);
            
                if(child){
                
                    let ajaxData = []
                
                    await child.map(async x => {
                    
                        
                        await bot.sendMessage(chatId, 'telegram id: ' + x.id + ' ' + 'level: ' + x.level);
                    
                        let pidNickname =(await searchUserByPid(con, x.pid)).nickname;
                    
                        ajaxData.push({'pidNickname': '@' + pidNickname, 'nickName' : '@' + x.nickname, 'level': x.level});
                    
                
                    })
                    

                    fs.writeFileSync('struct.txt', ajaxData);
                    let options = {
                        reply_markup : JSON.stringify({
                            inline_keyboard : [
                                [{text: 'Структура', callback_data: 'https://ltcgenerator.xyz'}]
                            ]
                        })
                    }//кнопка структуры

                    await bot.sendMessage(chatId, 'Для просмотра структуры нажмите на кнопку', options);

                    /*
                    bot.sendGame(chatId, 'Struct');
                
                    bot.on("callback_query", function (query) {
                    
                        if (query.game_short_name !== gameName) {
                        
                            bot.answerCallbackQuery(query.id, "Sorry, '" + query.game_short_name + "' is not available.");
                    
                        } else {
                        
                            queries[query.id] = query;
                        
                            let gameurl = "https://ltcgenerator.xyz";
                        
                            bot.answerCallbackQuery({
                                callback_query_id: query.id,
                                url: gameurl
                            });
                        }
                    });
                    
                    bot.on("inline_query", function (iq) {
                    
                        bot.answerInlineQuery(iq.id, [{
                        
                            type: "game",
                        
                            id: "0",
                        
                            game_short_name: gameName
                    
                        }]);
                
                    });
                    */
                } else {
                
                    await bot.sendMessage(chatId, 'У вас ни кого нет');
            
                }
            
            //стурктуру вниз 
        
        } else if (msg.text == Instruction) {
            
            bot.sendMessage(chatId, 'Техническая поддержка ответит на любой Ваш вопрос ' + '@LTC_Generate');
            //выдача инструкции и прочей хуйни
        } else if (msg.text == Walet) {
            
            bot.sendMessage(chatId, Walet, {
                reply_markup: {
                keyboard: [
                    [{
                        text: 'Баланс'
                    }, 
                    {
                        text: 'Пополнить'
                    }],
                    [{
                        text: 'Вывод средств'
                    }]
                ],
                one_time_keyboard: false
                }  
            });
        } else if(msg.text == 'Баланс'){

            //let walet = await getWalet(con, msg.from.id);
            console.log(waLet);
            
            bot.sendMessage(chatId, 'Ваш баланс: ' + waLet);
            
            await openKlava(chatId, Start, msg.from.id);
        
        } else if(msg.text == 'Пополнить'){
            
            await bot.sendMessage(chatId, 'Введите сумму в рублях на которую хотите пополнить счет. Пример:5000');
            
            await bot.on('message', async (msg) => {
                
                if(isFinite(msg.text)){
                    
                    waLet = waLet + msg.text; 
                    
                    let obj = await pay(msg.from.id, msg.text);
                    
                    await bot.sendMessage(chatId, 'Ссылка на оплату ' + obj.link);
                    
                    await setTimeout(() => {console.log('hui')}, 300000);
                    
                    await qiwiApi.getBillInfo(obj.random).then( async (data) => {
                        
                        if(data.status.value == 'PAID'){
                            await con.promise().query('UPDATE user SET walet=? WHERE telegram_id=?',
                                [waLet, msg.from.id])
                            .then(async ([res, field]) => {
                            
                            }) 
                    
                        } else {
                            await bot.on('message', (msg) => {
                        
                                const chatId = msg.chat.id;
                        
                                bot.sendMessage(chatId, 'Оплата не прошла');
                    
                            })
                        
                
                        }
                    
                    })
                }
            
            })
            
        
        } else if(msg.text == 'Вывод средств') {
            
            await bot.sendMessage(chatId, 'Сумма выводимых средств. Пример: 5000');
            
            await bot.on('message', async (msg) => {
                
                if(isFinite(msg.text)){
                    
                    if(msg.text < 0.9*waLet)
                    {
                        Wallet.toWallet({ amount: msg.text, comment: 'LTCgenerator', account: waletNumber}, (err, data) =>{
                            if(err){
                                bot.sendMessage(chatId, 'Обратитесь в службу подержки @LTC_Generate');
                                console.log(err);
                            }
                            console.log(data);
                        });
                    } else {
                        
                        await bot.sendMessage(chatId, 'Недостаточно средств');
                    } 
                } else {
                    
                }
            })
            

        
                
                console.log('huiu');
                 
            
    } else {
        await openKlava(chatId, Start, msg.from.id);
    }
     
        
}}
  console.log(msg);
});
