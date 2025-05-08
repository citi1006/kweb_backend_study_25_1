const factorial = n =>{
    if(n<0)return -1;
    if(n === 1 || n === 0) return 1;
    return n*factorial(n-1);
}

const permutation = (n,r) =>{
    if(n<r||n<0||r<0) return -1;
    return factorial(n)/factorial(n-r);
}

const combination = (n,r) =>{
    if(n<r||n<0||r<0) return -1;
    return factorial(n)/(factorial(n-r)*factorial(r));
}

const multiPermutation = (n,r) =>{
    if(n < 0||r < 0) return -1;
    return n**r;
}

const multiCombination = (n,r) =>{
    if(n<0||r<0) return -1;
    if(r == 0) return 1;
    return combination(n+r-1,r);
}

module.exports = {
    factorial,
    permutation,
    combination,
    multiCombination,
    multiPermutation,
};