.data
  message: .ascii "Hello, World!\n"	// Create message constant
  message_len = . - message		// Create message length constant

.text
  .global _start
  _start:

  mov x8, #0x40				// Write syscall

  mov x0, #0x1				// Write to STDOUT
  ldr x1, =message			// Read message from memory
  ldr x2, =message_len			// Read message length

  svc 0					// Write

  end:

  mov x8, #0x5d				// Exit syscall
  svc 0 				// Exit

