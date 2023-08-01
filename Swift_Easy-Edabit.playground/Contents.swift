import UIKit


//1. Write a function that returns true if there exists at least one number that is larger than or equal to n - https://edabit.com/challenge/XYJvsryXb3YCiHuic

func checkHigh(_ array: [Int], _ n: Int) -> Bool {
    for i in array {
        if i >= n  {
            return true
        } else {}
    }
    return false
}

checkHigh([5, 3, 15, 22, 4], 10)
checkHigh([1, 2, 3, 4, 5], 8)
checkHigh([4, 3, 3, 3, 2, 2, 2], 4)
checkHigh([], 5)

//2. Create a function that takes an initial word and extracts any words that start with the same letters as the initial word - https://edabit.com/challenge/XYJvsryXb3YCiHuic


func checkArray(_ word: String,_ array: [String]) -> [String] {
    var emptyArray = [String]()
    for i in array {
        if i .hasPrefix(word) {
            emptyArray.append(i)
            return emptyArray
        } else {

        }
    }
    return emptyArray
}

checkArray("bu", ["button", "breakfast", "border"])
checkArray("tri", ["triplet", "tries", "trip", "piano", "tree"])
checkArray("beau", ["pastry", "delicious", "name", "boring"])


//3. Create a function that takes an integer and returns the factorial of that integer. That is, the integer multiplied by all positive lower integers - https://edabit.com/challenge/XYJvsryXb3YCiHuic

func factorial (_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

factorial(3)
factorial(5)
factorial(12)


//4. Write a function that returns true if all characters in a string are identical and false otherwise - https://edabit.com/challenge/XYJvsryXb3YCiHuic

func checkString(_ str: String) -> Bool {
    if Set(str).count >= 2 {
        return false
    } else {
        return true
    }
}

checkString("aaaaaa")
checkString("aabaaa")
checkString("ccccca")
checkString("kk")


//5. Create a function that takes two arguments (item, times).
//The first argument (item) is the item that needs repeating while the second argument
//(times) is the number of times the item is to be repeated. Return the result in an array - https://edabit.com/challenge/XYJvsryXb3YCiHuic


func overAgain(arg: String, count: Int) -> [String] {
    var result = [String]()
    if count <= 0 {
        return []
    } else {
        for _ in 1...count {
            result.append(arg)
        }
        return result
    }
}


print(overAgain(arg: "Hello", count: 0))


//6. Write a function that takes in a string s and returns a function that returns s - https://edabit.com/challenge/XYJvsryXb3YCiHuic

func redundant(_ message: String) -> () -> Void {
    func display() {
        print(message)
    }
    return display
}

let f1 = redundant("apple")
f1()

let f2 = redundant("pear")
f2()

let f3 = redundant("")
f3()


//7. Create a function which will take in array and returns true if all elements in array are identical and false otherwise - https://edabit.com/challenge/XYJvsryXb3YCiHuic


func testJackpot(_ jackpot: [String]) -> Bool {
    let setJackpot = Set(jackpot)
    if setJackpot.count > 1 {
        return false
    } else {
        return true
    }
}


testJackpot(["@", "@", "@", "@"])
testJackpot(["abc", "abc", "abc", "abc"])
testJackpot(["SS", "SS", "SS", "SS"])
testJackpot(["&&", "&", "&&&", "&&&&"])
testJackpot(["SS", "SS", "SS", "Ss"])


//8. Create a function that takes a string and returns a string in which each character is repeated once - https://edabit.com/challenge/XYJvsryXb3YCiHuic

func doubleChar(_ str: String) -> String {
    var strArray = Array(str)
    var tempArray = String([String.Element]())

    strArray.forEach {
        tempArray.append($0)
        tempArray.append($0)
    }

    return tempArray

}

print(doubleChar("String"))
print(doubleChar("Hello World!"))
print(doubleChar("1234!_ "))


//9. Create a function that removes the first and last characters from a string.

func removeFirstLast(_ str: String) {

    if str.count <= 2 {
        print(str)

    } else {
        var test = str
        test.remove(at: test.startIndex)
        print(test.dropLast())
    }
}

removeFirstLast("hello")
removeFirstLast("maybe")
removeFirstLast("benefit")
removeFirstLast("a")


//10. An isogram is a word that has no duplicate letters. Create a function that takes a string and returns either true or false depending on whether or not it's an "isogram" - https://edabit.com/challenge/XYJvsryXb3YCiHuic


func isIsogram(_ str: String) -> Bool {
    if Array(str.lowercased()).count > Set(str.lowercased()).count {
        return false
    } else {
        return true
    }
}

isIsogram("Algorism")
isIsogram("PasSword")
isIsogram("Consecutive")
isIsogram("Ccommon")
isIsogram("Jakub")


//11. Write a function that transforms all letters from [a, m] to 0 and letters from [n, z] to 1 in a string.

//11.1 First we need to display alphabet in the Swift

let alphabet = (97...122).compactMap(UnicodeScalar.init)

//11.2 Second we need to divide the alphabet as the assignment tells a-n m-z and also make sure we can iterate through the alphabet so we need to map it as characters via method map and character init

let alphaAM = (97...109).compactMap(UnicodeScalar.init).map(Character.init)
let alphaMZ = (109...122).compactMap(UnicodeScalar.init).map(Character.init)


//11.3 Find a way how to check every letter inside the string and compare it with alphabets listed above - ive used the for loop as a test case

//let testString = Array("moon")
//var emptyArray = [Int]()
//
//for i in testString {
//    if alphaAM.contains(i) {
//        emptyArray.append(0)
//    } else if alphaMZ.contains(i) {
//        emptyArray.append(1)
//    } else {
//        emptyArray.append(0)
//    }
//}
//
//print(emptyArray)

// Success - prototype is working - lets build a function

//11.4 - Final function


func convertBinary(_ str: String) -> String {
    let alphaAM = (97...109).compactMap(UnicodeScalar.init).map(Character.init)
    let alphaMZ = (109...122).compactMap(UnicodeScalar.init).map(Character.init)
    var emptyArray = [Int]()
    
    for i in Array(str) {
        if alphaAM.contains(i) {
            emptyArray.append(0)
        } else if alphaMZ.contains(i) {
            emptyArray.append(1)
        } else {
            emptyArray.append(0)
        }
    }
    
    return emptyArray.map{String($0)}.joined()
}

convertBinary("house")
convertBinary("excLAIM")
convertBinary("moon")


//12. Create a function that takes in a year and returns the correct century - https://edabit.com/challenge/kkok79jQHZ2Qmqj2K
//Hints:
//All years will be between 1000 and 2010.
//The 11th century is between 1001 and 1100.
//The 18th century is between 1701-1800.


//12.1 Decided to use simple switch statement along with the function


func century (_ int: Int) -> String {
    
    var year = int
    switch year {
    case 1001...1100:
        return "11th century"
    case 1101...1200:
        return "12th century"
    case 1201...1300:
        return "13th century"
    case 1301...1400:
        return "14th century"
    case 1401...1500:
        return "15th century"
    case 1501...1600:
        return "16th century"
    case 1601...1700:
        return "17th century"
    case 1701...1800:
        return "18th century"
    case 1801...1900:
        return "19th century"
    case 1901...2000:
        return "20th century"
    case 2001...2010:
        return "21th century"
    default:
        return "Year out of range, use year between 1001 and 2010"
    }
}

century(1000)
century(900)
century(1945)
century(2008)
century(1456)


//13. Create a function that filters out an array of state names into two categories based on the second parameter.

//Example results:
//filterStateNames(["Arizona", "CA", "NY", "Nevada"], "abb")
//➞ ["CA", "NY"]
//
//filterStateNames(["Arizona", "CA", "NY", "Nevada"], "full")
//➞ ["Arizona", "Nevada"]
//
//filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "abb")
//➞ ["MT", "NJ", "TX", "ID", "IL"]
//
//filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "full")
//➞ []


//13.1 First lets put filter to the test - and myself too :/
//
//var array = ["Arizona", "CA", "NY", "Nevada"]
//
//var fullOnly = array.filter{$0.count > 2}
//var abbOnly = array.filter{$0.count == 2}
//
//
//13.2 Since filter is working we can use it along with the switch statement


func filterStateNames(_ arr: [String], _ par: String) -> [String] {
    switch par {
    case "full":
        let fullOnly = arr.filter{$0.count > 2}
        return fullOnly
    case "abb":
        let abbOnly = arr.filter{$0.count == 2}
        return abbOnly
    default:
        return Array()
    }
}

filterStateNames(["Arizona", "CA", "NY", "Nevada"], "abb")
filterStateNames(["Arizona", "CA", "NY", "Nevada"], "full")
filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "abb")
filterStateNames(["MT", "NJ", "TX", "ID", "IL"], "full")


//14. Create a function that takes an array of numbers and returns a new array, sorted in ascending order (smallest to biggest). In case of empty array or nil return empty array.

//Example results:
//sortNumsAscending([1, 2, 10, 50, 5]) ➞ [1, 2, 5, 10, 50]
//sortNumsAscending([80, 29, 4, -95, -24, 85]) ➞ [-95, -24, 4, 29, 80, 85]
//sortNumsAscending(nil) ➞ []
//sortNumsAscending([]) ➞ []


func sortNumsAscending(_ arr: [Int]?) -> [Int] {
    if arr == [] {
        return []
    } else {
        return arr?.sorted() ?? []
    }
}

sortNumsAscending([1, 2, 10, 50, 5])
sortNumsAscending([80, 29, 4, -95, -24, 85])
sortNumsAscending(nil)
sortNumsAscending([])

//15. Create a function that takes an array of two numbers and checks if the square root of the first number is equal to the cube root of the second number.

//checkSquareAndCube([4, 8]) ➞ true
//checkSquareAndCube([16, 48]) ➞ false
//checkSquareAndCube([9, 27]) ➞ true

//15.1 First check how to perform an squre root and cube root - turns out Swift has the answer - we can use sqrt and cbrt but the value needs to be Double
//sqrt(4.0)
//cbrt(8.0)
//
////15.2 Make a test if statement to check the values
//
//var arr = [4,8].map{Double($0)}
//
//var one = arr[0]
//var two = arr[1]
//
//if sqrt(one) == cbrt(two) {
//    print("True")
//} else {
//    print("False")
//}
//
//


//15.3 Put it all together

func checkSquareAndCube(_ arr: [Double]) -> Bool {
    if sqrt(arr[0]) == cbrt(arr[1]) {
        return true
    } else {
        return false
    }
}

checkSquareAndCube([4, 8])
checkSquareAndCube([16, 48])
checkSquareAndCube([9, 27])


//16 Create a function that takes an array of numbers and returns the second largest number.


//16.1 We can utilize the sort function to sort the array by ascending order and print second largest by selecting the 2nd index
//var arr = [25, 143, 89, 13, 105]
//arr.sort(by:>)
//arr[1]

//16.2 Build a final function

func secondLargest(_ arr: [Int]) -> Int {
    var result = arr.sorted(by: >)
    return result[1]
}

secondLargest([10, 40, 30, 20, 50])
secondLargest([25, 143, 89, 13, 105, 106])
secondLargest([54, 23, 11, 17, 10])


//17. Create a function that takes an array of strings and return an array, sorted from shortest to longest.

//17.1 Test the solution with closure
//var arr1 = ["Leonardo", "Michelangelo", "Raphael", "Donatello"]
//let sortedNames = arr1.sorted{$0.count < $1.count}


//17.2 Write a function
func sortByLenght(_ arr: [String]) -> [String] {
    var result = arr.sorted{$0.count < $1.count}
    return result
}

sortByLenght(["Google", "Apple", "Microsoft"])
sortByLenght(["Leonardo", "Michelangelo", "Raphael", "Donatello"])
sortByLenght(["Turing", "Einstein", "Jung"])

//18. H4ck3r Sp34k - Create a function that takes a string as an argument and returns a coded (h4ck3r 5p34k) version of the string.
// Assesment notes: In order to work properly, the function should replace all "a"s with 4, "e"s with 3, "i"s with 1, "o"s with 0, and "s"s with 5.


//18.1 - Some basic testing

//var str = "javascript is cool"
//
//var arr2 = Array(str)
//var arr3 = [Any]()
//
//for i in arr2 {
//    if i == "a" {
//        arr3.append(4)
//    } else if i == "e" {
//        arr3.append(3)
//    } else if i == "i" {
//        arr3.append(1)
//    } else if i == "o" {
//        arr3.append(0)
//    } else if i == "s" {
//        arr3.append(5)
//    } else {
//        arr3.append(i)
//    }
//}

//print(arr3.map{($0)}.joined())


//18.2 Used switch to improve readability, added some tweaks and made a final function
func hackerSpeak(_ str: String) -> String {
    var arr2 = Array(str)
    var arr3 = [String]()
    
    for i in arr2 {
        switch i {
        case "a":
            arr3.append("4")
        case "e":
            arr3.append("3")
        case "i":
            arr3.append("1")
        case "o":
            arr3.append("0")
        case "s":
            arr3.append("5")
        default:
            arr3.append(String(i))
        }
    }
    var finalString = arr3.joined()
    return finalString
}

hackerSpeak("javascript is cool")
hackerSpeak("programming is fun")
hackerSpeak("become a coder")

//19. Create a function that takes an array of numbers between 1 and 10 (excluding one number) and returns the missing number.

//19.1 Pseudocode - we will convert an array into set, create another set where we will specify the range from 1...10 and we will use substracting function to find missing index

//var arr = Set([1, 2, 3, 4, 6, 7, 8, 9, 10])
//var set = Set(1...10)
//
//print(set.subtracting(arr))

//19.2 Putting it all together

func missingNum(_ arr: [Int]) -> Int {
    var set = Set(1...10)
    var result = Array(set.subtracting(Set(arr)))

    return result[0]
}

missingNum([1, 2, 3, 4, 6, 7, 8, 9, 10])
missingNum([7, 2, 3, 6, 5, 9, 1, 4, 8])
missingNum([10, 5, 1, 2, 4, 6, 8, 3, 9])


//20. Create a function to extract the name of the subreddit from its URL.
//subReddit("https://www.reddit.com/r/funny/") ➞ "funny"

func subReddit(_ urlString: String) -> String {
    let pattern = "(?<=/r/)\\w+"
    let regex = try? NSRegularExpression(pattern: pattern)
    
    if let match = regex?.firstMatch(in: urlString, options: [], range: NSRange(urlString.startIndex..., in: urlString)),
       let range = Range(match.range, in: urlString) {
        return String(urlString[range])
    }
    
    return ""
}

subReddit("https://www.reddit.com/r/funny/")
subReddit("https://www.reddit.com/r/relationships/")
subReddit("https://www.reddit.com/r/mildlyinteresting/")



//21.https://edabit.com/challenge/5EbHHxm2qTb3uctSa
//Write an function to reverse an array


//21.1 Easy Solution - use Swift prepared method

//var array = [9, 9, 2, 3, 4]
//array.reverse()

//21.2 Lets build a logic - we will use Swift enumerated() which is returning an Tuple which we can use to map the array indexes and elements - then we can iterate over an original array and reverse the order by counting the lenght of the array (5) using -1 cus array is always starting at 0 index and use the index of the element to place in the right spot

//var arrayNew = [Int]()
//for (i , _) in array.enumerated() {
//    arrayNew.append(array[array.count - 1 - i])
//}
//print(arrayNew)



//21.3 Lets craft a function from previous logic

func reverse(_ arr: [Int]) -> [Int] {
    var arrayNew = [Int]()
    if arr == [] {
        return []
    } else {
        for (i , _) in arr.enumerated() {
            arrayNew.append(arr[arr.count - 1 - i])
        }
        return arrayNew
    }
}

reverse([1, 2, 3, 4])
reverse([9, 9, 2, 3, 4])
reverse([])


//22. Progress day function - https://edabit.com/challenge/pBpLnw6EduuzQEcW5
/*
To train for an upcoming marathon, Johnny goes on one long-distance run each Saturday.
He wants to track how often the number of miles he runs this Saturday exceeds the number
of miles run the previous Saturday. This is called a progress day.

Create a function that takes in an array of miles run every
Saturday and returns Johnny's total number of progress days.
 
Example:
progressDays([3, 4, 1, 2]) ➞ 2
There are two progress days, (3->4) and (1->2)
*/

// 22.1 - We need to iterate over an array to determine if index is larger than his predecessor

//var arr = [10, 11, 12, 9, 10]
//var index = 0
//var result = 0
//
//for i in arr[1...] {
//    if i > arr[index] {
//        result += 1
//    } else {
//        result += 0
//    }
//    index += 1
//}
//
//print(result)

//22.2 Lets make a final function

func progressDays(_ arr: [Int]) -> Int {
    
    var index = 0
    var result = 0
    
    for i in arr[1...] {
        if i > arr[index] {
            result += 1
        } else {
            result += 0
        }
        index += 1
    }
    return result
}

progressDays([10, 11, 12, 9, 10])
progressDays([6, 5, 4, 3, 2, 9])
progressDays([9, 9])



//23. Find the largest number in group or arrays https://edabit.com/challenge/d9EE97Lbtq4F52Tvm
//findLargest([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]) ➞ [7, 90, 2]

//23.1 First find a function which will find the largest number in array - max() function
var arr = [1,543765,43,543,5476433333,190,23456]

//arr.max()
//
//23.2 Too easy lets build logic from scratch
//var maxNumber = arr[0]
//
//for i in arr[1...] {
//    if i > maxNumber {
//     maxNumber = i
//    }
//}
//print(maxNumber)


//23.3 Realized we can use Swift higher functions compactmap along with max()
func findLargest(_ arr: [Array<Double>]) -> [Double] {
    var newarr = arr.compactMap{$0.max()}
    return newarr
}

findLargest([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]])
findLargest([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]])
findLargest([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]])



//24. Trace the Matrix https://edabit.com/challenge/BbGRjPxde2sqiKNzg
/*
 Given a square matrix (i.e. same number of rows as columns), its trace is the sum of the entries in
 the main diagonal (i.e. the diagonal line from the top left to the bottom right).

As an example, for:
 [
   [1, 2, 3],
   [4, 5, 6],
   [7, 8, 9]
 ]
Write a function that takes a square matrix and computes its trace.
 */


//24.1 Lets build a logic first which will iterate through multiple arrays and everytime it hits new array it will start from index + 1

//var arrayO = [
//    [1, 2, 3],
//    [4, 5, 6],
//    [7, 8, 9]
//  ]
//
//for i in 0..<arrayO.count {
//    print(arrayO[i][i])
//}

//24.2 Glue the logic into function

func trace(_ arr: [Array<Int>]) -> Int {
    var finalArray: [Int] = []
    for i in 0..<arr.count {
        finalArray.append(arr[i][i])
    }
    return finalArray.reduce(0,+)
}

trace([
  [1, 4],
  [4, 1]
])

trace([
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
])

trace([
  [1, 0, 1, 0],
  [0, 2, 0, 2],
  [3, 0, 3, 0],
  [0, 4, 0, 4]
])


//25. Special arrays https://edabit.com/challenge/Jap6XhHuujwRjPJKp
/*
 An array is special if every even index contains an even number and every
 odd index contains an odd number. Create a function that returns true if an array is special, and false
 otherwise.
 
 isSpecialArray([2, 7, 4, 9, 6, 1, 6, 3]) ➞ true
 // Even indices: [2, 4, 6, 6]; Odd indices: [7, 9, 1, 3]
 */

//25.1 Leets find an way to check odd numbers - we can use modulo operator to verify

var orr = [2, 7, 4, 9, 6, 1, 6, 3]
//
//for i in orr {
//    if i % 2 == 0 {
//        print(i)
//    } else {
//        print(i)
//    }
//}

//25.2 Since we tried the modulo lets use a method which can map the array index and element inside - enumerated method will throw an tuple containing index and element

//for (i,e) in orr.enumerated() {
//    print("\(i) \(e)")
//}

//25.3 Lets glue it together - we can obtain index/element and also verify the even/odd number status

//for (i,e) in orr.enumerated() {
//    if i % 2 == 0 && e % 2 == 0 {
//        print("True")
//    } else {
//        print("False")
//    }
//}

//25.4 Lets build a function

func isSpecialArray(_ arr: [Int]) -> Bool {
    for (i,e) in arr.enumerated() {
        if (i % 2 == 0 && e % 2 == 0) || (i % 2 != 0 && e % 2 != 0) {
        } else {
            return false
        }
    }
    return true
}

isSpecialArray([2, 7, 4, 9, 6, 1, 6, 3])
isSpecialArray([2, 7, 9, 1, 6, 1, 6, 3])
isSpecialArray([2, 7, 8, 8, 6, 1, 6, 3])



//26. Phone number formatting https://edabit.com/challenge/3zEAg6SHexkPYithN
/*
Create a function that takes an array of 10 numbers (between 0 and 9) and returns a string of those numbers
formatted as a phone number (e.g. (555) 555-5555)
*/

//26.1 First ensure the given array has range between 0-9 and it has 10 elements

//let array = Array(0...9)
//
//let allinRange = array.allSatisfy{0...9 ~= $0} && array.count == 10
//
//if allinRange {
//    print("Legit phone number")
//} else {
//    print("Piece of sh*t")
//}

//26.2 Lets create a final function
func formatPhoneNumber(_ arr: [Int]) -> String {
    if arr.allSatisfy({0...9 ~= $0}) && arr.count == 10 {
        var firstPart = arr[0...2].map{String($0)}.joined()
        var secondPart = arr[3...5].map{String($0)}.joined()
        var thirdPart = arr[6...9].map{String($0)}.joined()
        
        return "(\(firstPart)) " + "\(secondPart)" + "-\(thirdPart)"
    } else {
        return "Phone number has to be between 0-9 and is 10-digits long, try again"
    }
}

formatPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
formatPhoneNumber([5, 1, 9, 5, 5, 5, 4, 4, 6, 8])
formatPhoneNumber([3, 4, 5, 5, 0, 1, 2, 5, 2, 7])


//27. Sum of all Evens in a Matrix - https://edabit.com/challenge/kdLT7KjqYQeCwAyg7
/*
 Create a function that returns the sum of all even elements in a 2D matrix.
 sumOfEvens([
   [1, 0, 2],
   [5, 5, 7],
   [9, 4, 3]
 ]) ➞ 6

 // 2 + 4 = 6
 */

//27.1 - Lets create the logic - classic nested for loop at first higher orde functions after


//var matrix = [
//[1, 0, 2],
//[5, 5, 7],
//[9, 4, 3]
//]

//var blank: [Int] = []
//
//for i in matrix {
//    for e in i {
//        if e % 2 == 0 {
//            blank.append(e)
//        }
//    }
//}
//
//print(Int(blank.reduce(0,+)))


//var summ = matrix.flatMap{ $0.filter{ $0 % 2 == 0} }
//print(Int(summ.reduce(0,+)))




//27.3 Lets glue up a function using boilerplatte

//func sumOfEvens(_ arr: [Array<Int>]) -> Int {
//    var blank: [Int] = []
//    if arr.isEmpty {
//        return 0
//    } else {
//        for i in arr {
//            for e in i {
//                if e % 2 == 0 {
//                    blank.append(e)
//                }
//            }
//        }
//    }
//    return (Int(blank.reduce(0,+)))
//}
//
//sumOfEvens([
//  [1, 1],
//  [1, 1]
//])
//
//sumOfEvens([
//  [42, 9],
//  [16, 8]
//])
//
//sumOfEvens([
//  [],
//  [],
//  []
//])


//27.4 Final clean function using higher order functions - idiomatic and concise - perfect

func sumOfEvens(_ arr: [[Int]]) -> Int {
    arr.flatMap { $0.filter { $0 % 2 == 0 } }.reduce(0, +)
}

sumOfEvens([
  [1, 1],
  [1, 1]
])

sumOfEvens([
  [42, 9],
  [16, 8]
])

sumOfEvens([
  [],
  [],
  []
])


//28. Secret Society - https://edabit.com/challenge/aW8KBxpHaiqYoTiEL
/*
 A group of friends have decided to start a secret society.
 The name will be the first letter of each of their names, sorted in alphabetical order.
 Create a function that takes in an array of names and return's the name of the secret society.
 */


//28.1 Lets fetch a function right away
func societyName(_ arr: [String]) -> String {
    arr.map{ String($0.prefix(1))}.sorted().joined()
}

societyName(["Adam", "Sarah", "Malcolm"])
societyName(["Harry", "Newt", "Luna", "Cho"])
societyName(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"])



//29. Basic calculator - https://edabit.com/challenge/TMtgtbQTpJ9EQtXzc

enum CalculatorError: Error {
    case zeroDivision
}

func calculator(_ one: Int, _ oper: String, _ two: Int) throws -> Int  {
    switch oper {
    case "+" :
        return one + two
    case "-" :
        return one - two
    case "*" :
         return one * two
    case "/" :
        if two == 0 {
            throw CalculatorError.zeroDivision
        } else {
            return one / two
        }
    default:
       return 0
    }
}

try calculator(2, "+", 2)
try calculator(2, "*", 2)
try calculator(4, "/", 2)
try calculator(177, "*", 200)



//30. Say Hello to Guests - https://edabit.com/challenge/vB2997cjHPRRTe4gL
/*
 In this exercise you will have to:
 Take a list of names.
 Add "Hello" to every name.
 Make one big string with all greetings.
 The solution should be one string with a comma in between every "Hello (Name)".
 Each greeting has to be separated with a comma and a space.
 If you're given an empty array [], return an empty string "".
 */

func greetPeople(_ arr: [String]) -> String {
    if arr.isEmpty {
        return ""
    }
    return arr.map{String("Hello \($0)")}.joined(separator: ", ")
}

greetPeople(["Joe"])
greetPeople(["Angela", "Joe"])
greetPeople(["Frank", "Angela", "Joe"])
