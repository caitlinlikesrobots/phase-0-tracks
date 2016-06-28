* What are some of the key design philosophies of the Linux operating system?

According to opensource.com, there are 10 tenents of Linux operation:

1. Small is Beautiful ->
2. Each Program Does One Thing Well->
Much like the Single Responsibility Principle, 
keeping commands short and responsible for one task maintains a streamlined and efficient approach to the design. 
3. Prototype as Soon as Possible
While this may seem counter-intuitive, it really pushes the programmer to begin programming in a way that is fluid to the program. In the prototype, there are learnable moments of what is working and what is not, and there is the reduction of risk by avoiding making concrete decisions before pushing the final program into fruition. 
4. Choose Portability Over Efficiency
This ties in with using shell scripts in that portability is ultimately the most effective way to deploy an operation across a number of various systems. 
5. Store Date in Flat Text Files
This seems to be a way to access data in the most efficient and streamlined way possible. 
6. Use Software Leverage
The essence of this tenent is that "good programmers write good code and great programmers borrow good code." This is an efficient way of taking thousands of lines of pre-written and tested code and deploying them with a handful of commands. This kind of leverage allows for ultimate efficiency and relative ease in creating operations that are based on codes that already do the work you need them to do. 
7. Use Shell Scripts to Increase Leverage and Portability is key in this design tenent in the sense that shell scripts, rather than compiled languages, can be run on "incompatible" systems.
8. Avoid Captive User Interfaces
This affects the flow of the UI in the operation. Ultimately, you want to avoid CUIs due the nature of being slow, bogged down in dependent commands, and takes for granted that the user is HUMAN rather than MACHINE. 
9. Make Every Program a Filter: each command will take an input, usually from Standard Input, and “filters” the data stream by making some change to it, then sends the resulting data stream to Standard Output. Standard Input and Standard Output are known collectively as STDIO.

* What is a VPS? What are the advantages of using a VPS?

Virtual private servers are basically small boxes of memory that are created for programmers to host web-based platforms. The use of a VPS allows programmers to deploy their programs in a safe, sandbox-like environment that isn't directly tied to their personal machines or files. Commands like rm -rf aren't as dangerous and error isn't as frightening. 

* Why is it considered a bad idea to run programs as the root user on a Linux system?

When running as root user, you risk affecting the core of your OS, and probably in a negative way. Somewhat like good git workflow, running Linux as another user keeps your OS safe from any damage that might occur during programming. 

