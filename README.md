# Delphi-Lazarus-DLL-Exceptions
Project to study the result of throwing exceptions across DLL/EXE boundary

When an exception is thrown in a DLL, it is not wise to catch it in the exe. This project attempts to study the limitations of this behavior and see what exactly CAN in fact be done. I.e. if a GUI form is inside a DLL and an exception is thrown from the DLL alone, and the exe does not touch the code, this should be okay... what are the limitations and rules for exceptions in DLL? This project will study the limitations and try to find out absolutely what is allowed and what is not.

## The theory
Exceptions thrown in a DLL, called by an exe, will behave unpredictably and unreliably. 

However the important point to note is that it is sometimes in fact okay to throw an exception or catch it in the DLL itself, so as long as the exe code is not involved in the process.. what are these exact limitations?

## In Practice
The projects in this github page will push the limits and find out what can and cannot be done with exceptions in DLL's

## Examples
Load a DLL written in Delphi, by a Lazarus Exe. Two different exception mechanisms are being used by two different
compilers. Throw an exception in the DLL, but catch it in the DLL and not in the exe. This should theoretically work fine.

Another example would be to call a procedure in the DLL from the exe, which calls other procedures in the DLL,
and have some exceptions to see the results. What happens in these cases? Likely if the Exe code is involved at
all, it will not work predictably and produce undesirable results, but this needs to be studied.