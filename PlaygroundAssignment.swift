/*: Playground - noun: a place where people can play

James Walker
Prof Aaron
M.A.D.
1/19/2016

○ Create an Array of 5 User Objects

○ Find the oldest User

○ Find the average age of all of the Users

○ Find the youngest User
*/

import UIKit

// CLASS
class User
{
    var name:String = ""
    var age:Int = 0
    var address:String = ""
    
    init (name:String, age:Int, address:String)
    {
        self.name = name
        self.age = age
        self.address = address
    }
    
    func whoami() ->String
    {
        //return "I am \(name) and I am \(age) years old."
        return self.name
    }
    
    func whereami() ->String
    {
        //return "I am \(name) and I am at \(address)."
        return self.address
    }
    
    func howoldami() ->Int
    {
        return self.age
    }
    
}

let aaron = User(name: "Aaron", age: 24, address: "2225 4th St. NW")        //declare variables
let barry = User(name: "Barry", age: 20, address: "511 Gresham Pl. NW")
let chuck = User(name: "Chuck", age: 19, address: "511 Gresham Pl. NW")
let diggy = User(name: "Diggy", age: 22, address: "2225 4th St. NW")
let elise = User(name: "Elise", age: 18, address: "2225 4th St. NW")

print(aaron.whoami())           //function test
print(aaron.whereami())         //function test
print(aaron.howoldami())        //function test

// ARRAY
var userArray:[User] = [User]()

userArray.append(aaron)         //add users to array
userArray.append(barry)
userArray.append(chuck)
userArray.append(diggy)
userArray.append(elise)

print(userArray)                //compile test
print(userArray[4].howoldami()) //syntax/function test

let sortedArray = userArray.sort    //sort array by age
{
    (user1, user2) -> Bool in
    user1.age < user2.age
}
//print("Sorted(Age) Array: \(sortedArray)") //needs a loop to print each user's name

// PRINT
print("The youngest user is: \(sortedArray[0].whoami())")
print("The eldest user is: \(sortedArray[4].whoami())")

var sum = 0, i = 0
for users in userArray
{
    sum += (users.age)
    i++
}
var average = sum / i
print("The average age of all users is about: \(average)")
