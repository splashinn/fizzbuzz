// fizzbuzz.js
// splashinn

for (var i = 1; i <= 100; i++) {
    var expletive = '';
    if (i % 3 === 0) expletive += 'Fizz';
    if (i % 5 === 0) expletive += 'Buzz';
    console.log(expletive || i);
}
