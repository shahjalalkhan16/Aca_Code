function isPalindrome(str) {

    let rStr = str.toLowerCase().split('').reverse().join('');
    console.log(rStr)
    if (str === rStr)
        console.log(`The parsed string "${str}" is Palindrome.`)
    else
        console.log(`The parsed string "${str}" not Palindrome.`)
}

isPalindrome("Abika")  //Output: Not Palindrome
isPalindrome("radar")  //Output: Palindrome