//Create list of ints from 1 to 5, Haskell equivalent [1..5]
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i<=b; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpList, s){
    if (s =='s'){       
        let sum = inpList.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum;
    }
    else if (s == "quit") {
            console.log("Quitting...");
        }
    
    else {        
        let sum = inpList.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return (sum / inpList.length);
    }
}

// Get input from command line arguments for the list and the letter

const inp1 = parseInt(process.argv[2], 10);
const inp2 = parseInt(process.argv[3], 10);
const inp3 = process.argv[4];

let myarr = arrFunc(inp1,inp2); //create the list
let x = applicatorFunc(myarr, inp3); //get the result of the list and the choice of option
console.log(x); //output answer