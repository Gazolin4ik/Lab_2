function printAlphabetPyramid(N) {
    for (let row = N; row >= 1; row--) {
        let line = '';
        for (let letter = N; letter >= row; letter--) {
            line += String.fromCharCode('A'.charCodeAt(0) + letter - 1) + ' ';
        }
        console.log(line.trim());
    }
}

const N = parseInt(prompt(), 10);
printAlphabetPyramid(N);