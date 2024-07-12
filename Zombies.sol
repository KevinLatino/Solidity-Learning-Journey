pragma solidity >=0.5.0 <0.6.0;

// Define the version of Solidity to be used for compiling this contract
// Any version from 0.5.0 up to, but not including, 0.6.0
contract ZombieFactory {
    // Define the number of digits the DNA of each zombie will have
    uint dnaDigits = 16;

    // Calculate the DNA modulus, which is 10 raised to the power of dnaDigits
    // This is used to ensure the DNA has exactly 16 digits
    uint dnaModulus = 10 ** dnaDigits;

    // Define a struct to represent a Zombie
    // A Zombie has a name (string) and DNA (unsigned integer)
    struct Zombie {
        string name;
        uint dna;
    }

    // Declare a dynamic public array of Zombies
    // This will store all instances of Zombies created
    Zombie[] public zombies;
}
