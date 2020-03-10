"sek you are suck with regex".replace(/\w+/g,'0')

/\w+/g// if any space will find multi, no space single of every tings

/(\w\w\w)+/g//it find the 3char folow by 3charactor n time until no finding because. if any space will find multi, no space single

/*8******************************************************************************************************************************/
/(\w\w\w)+(?!\w)/g
/e(?!s)/g
/\w(?!\w)/g // this will find single result? no or yes depen on string any. with space multi with no space single find.
/(\w)(?=(\w\w\w)+(?!\w))/g
/(\d)(?=(\d\d\d)+(?!\d))/g
/(\d\d\d)+(?!\d)/ //what? it find the last 3*3*3n because 

"sek you are suck with regex".replace(/(\w\w)+/g,'0')
"0k 0u 0e 0 0 0x"
new RegExp(/(?=((\d\d\d)+)(?!\d))/,'g') //(infint loop)

var myString = "123456789",  result, myRegexp = new RegExp(/(\d)(?=(\d\d\d)+(?!\d))/,'g');
while (result = myRegexp.exec(myString)) {
    console.log(result, myRegexp.lastIndex);
}
VM141:5 ["1", "1", "890", index: 0, input: "1234567890"] 1
VM141:5 ["4", "4", "890", index: 3, input: "1234567890"] 4
VM141:5 ["7", "7", "890", index: 6, input: "1234567890"] 7
/*8******************************************************************************************************************************/

var myString = "1234567890",  result, myRegexp = /(\d\d\d)+(?!\d)/g;
outPut = ["234567890", "890", index: 1, input: "1234567890"] 10

/*8******************************************************************************************************************************/
var myString = "1234567890", myRegexp = /(\d\d\d)+/g, result;
VM136:5 ["123456789", "789", index: 0, input: "1234567890"] 9
/*8******************************************************************************************************************************/
var myString = "sek you are suck with regex", result, myRegexp = /(\w\w\w)+/g; // why this one multi find because of space

VM149:5 ["sek", "sek", index: 0, input: "sek you are suck with regex"] 3
VM149:5 ["you", "you", index: 4, input: "sek you are suck with regex"] 7
VM149:5 ["are", "are", index: 8, input: "sek you are suck with regex"] 11
VM149:5 ["suc", "suc", index: 12, input: "sek you are suck with regex"] 15
VM149:5 ["wit", "wit", index: 17, input: "sek you are suck with regex"] 20
VM149:5 ["reg", "reg", index: 22, input: "sek you are suck with regex"] 25
/*8******************************************************************************************************************************/
var myString = "sekyouaresuckwithregex", result, myRegexp = /(\w\w\w)+/g; // why this one not multifine because of no space

VM179:4 ["sekyouaresuckwithrege", "ege", index: 0, input: "sekyouaresuckwithregex"] 21
/*8******************************************************************************************************************************/



while (result = myRegexp.exec(myString)) {
    console.log(result, myRegexp.lastIndex);
}
(/\d{3}(\d+)/,'g')
/(\d{3})(\d{3})(\d+)/,'g')
