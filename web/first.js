const prompt = require('prompt-sync')();

// // Prompt for user input
// const input = prompt('Enter your input: ');
// console.log(`You entered: ${input}`);
function countLetterOccurrences(str) {
    let frequency = {};
    for (let char of str) {
       // char = char.toLowerCase();
        if (char.match(/[a-zA-Z]/i)) {
            frequency[char] = (frequency[char] || 0) + 1;
        }
    }
    return frequency;
}

console.log(countLetterOccurrences("Hello World"));
