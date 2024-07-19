.global _start			// Provide program starting address

// Setup the parameters to print hello world and then call linux
_start:
	
	mov x0, #1		// 1 = stdout
	ldr x1, =helloworld	// string to print
	mov x2, #13		// length of our string
	mov x8, #64		// Linux write system call
	svc 0			// call linux to output the string

	mov x0, #0		// use 0 return code
	mov x8, #93		// service code 93 terminates
	svc 0			// call linux to terminate

.data
helloworld: .ascii "Hello World!\n"

