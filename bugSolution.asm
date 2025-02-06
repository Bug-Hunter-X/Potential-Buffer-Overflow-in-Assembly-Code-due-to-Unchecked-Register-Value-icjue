mov ecx, [ecx_limit] ; Load the upper limit of ecx from memory
; Check if ecx is within bounds
cmp ecx, 1000 ; Assume a limit of 1000
jge handle_overflow ; Jump to error handling if ecx >= 1000
mov eax, [ebx+ecx*4] ; Access memory safely
jmp end

handle_overflow:
; Handle the overflow error appropriately, e.g., set an error code
mov eax, -1 ; Set an error code
end: