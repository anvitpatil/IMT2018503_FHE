# IMT2018503_FHE

This is a hardware implementation of the Key Generation for the Fully Homomorphic Encryption containing polymul, polyadd, modulo reduction unit, TRNG and a noise sampler.
polymul module is built using NTT algorithm. 

For TRNG, we can generate Ultra High Entropy Pseudo Random Number Generator from the below repository.
https://github.com/wuftymerguftyguff/uheprng
Add the pre computed values in memory.coe file which can be added to the Block-RAM IP of the TRNG module.
