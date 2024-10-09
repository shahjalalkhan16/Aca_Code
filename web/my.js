function countLetters(str) {
    const counts = {};
    for (const char of str) {
      counts[char] = (counts[char] || 0) + 1;
    }
    return counts;
  }
  
  console.log(countLetters("Hello World")); //{ H: 1, e: 1, l: 3, o: 2, W: 1, r: 1, d: 1 }