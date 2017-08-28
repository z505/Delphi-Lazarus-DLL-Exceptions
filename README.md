# Delphi-Lazarus-DLL-Exceptions
Project to study the result of throwing exceptions across DLL/EXE boundary

When an exception is thrown in a DLL, it is not wise to catch it in the exe. This project attempts to study the limitations of this behavior and see what exactly CAN in fact be done. I.e. if a GUI form is inside a DLL and an exception is thrown from the DLL alone, and the exe does not touch the code, this should be okay... what are the limitations and rules for exceptions in DLL? This project will study the limitations and try to find out absolutely what is allowed and what is not.

The theory is: exceptions thrown in a DLL, called by an exe, will behave unpredictably and unreliably. However the important point to note is that it is sometimes in fact okay to throw an exception or catch it in the DLL itself, so as long as the exe code is not involved in the process.. what are these exact limitations? The projects in this github page will push the limits and find out what can and cannot be done with exceptions in DLL's

