ASCII_TABLE:
;; db 0b01110, 0b10001, 0b10011, 0b10011, 0b10101, 0b11001, 0b11001, 0b10001, 0b01110
;; db 0b01100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b11111
;; db 0b11111, 0b00001, 0b00001, 0b00001, 0b11111, 0b10000, 0b10000, 0b10000, 0b11111
;; db 0b11111, 0b00001, 0b00001, 0b00001, 0b01111, 0b00001, 0b00001, 0b00001, 0b11111
;; db 0b10001, 0b10001, 0b10001, 0b10001, 0b11111, 0b00001, 0b00001, 0b00001, 0b00001
;; db 0b11111, 0b10000, 0b10000, 0b10000, 0b11111, 0b00001, 0b00001, 0b00001, 0b11111
;; db 0b11111, 0b10000, 0b10000, 0b10000, 0b11111, 0b10001, 0b10001, 0b10001, 0b11111
;; db 0b11111, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001
;; db 0b01110, 0b10001, 0b10001, 0b10001, 0b01110, 0b10001, 0b10001, 0b10001, 0b01110
;; db 0b01110, 0b10001, 0b10001, 0b10001, 0b01111, 0b00001, 0b00001, 0b00001, 0b01110
;; db 0b01110, 0b10001, 0b10001, 0b10001, 0b11111, 0b10001, 0b10001, 0b10001, 0b10001
;; db 0b11110, 0b10001, 0b10001, 0b10001, 0b11110, 0b10001, 0b10001, 0b10001, 0b11110
;; db 0b01111, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b01111
;; db 0b11110, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b11110
;; db 0b11111, 0b10000, 0b10000, 0b10000, 0b11110, 0b10000, 0b10000, 0b10000, 0b11111
;; db 0b11111, 0b10000, 0b10000, 0b10000, 0b11110, 0b10000, 0b10000, 0b10000, 0b10000
times 9*0x20 db 0b10101
times 9 db 0
db 0b01100, 0b01100, 0b01100, 0b01100, 0b01100, 0b01100, 0b00000, 0b01100, 0b01100
db 0b01010, 0b01010, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000
db 0b01010, 0b01010, 0b11111, 0b01010, 0b01010, 0b01010, 0b11111, 0b01010, 0b01010
db 0b00100, 0b01110, 0b10100, 0b10100, 0b01110, 0b00101, 0b00101, 0b01110, 0b00100
db 0b11010, 0b11010, 0b00010, 0b00100, 0b00100, 0b00100, 0b01000, 0b01011, 0b01011
db 0b00000, 0b00000, 0b01100, 0b10000, 0b10000, 0b01100, 0b10101, 0b10010, 0b01101
db 0b00100, 0b00100, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000
db 0b00100, 0b00100, 0b01000, 0b01000, 0b01000, 0b01000, 0b01000, 0b00100, 0b00100
db 0b00100, 0b00100, 0b00010, 0b00010, 0b00010, 0b00010, 0b00010, 0b00100, 0b00100
db 0b00100, 0b11111, 0b01010, 0b10001, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000
db 0b00000, 0b00000, 0b00100, 0b00100, 0b11111, 0b00100, 0b00100, 0b00000, 0b00000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00100, 0b01000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b01110, 0b00000, 0b00000, 0b00000, 0b00000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b01100, 0b01100
db 0b00010, 0b00010, 0b00010, 0b00100, 0b00100, 0b00100, 0b01000, 0b01000, 0b01000
db 0b01110, 0b10001, 0b10011, 0b10011, 0b10101, 0b11001, 0b11001, 0b10001, 0b01110
db 0b01100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b11111
db 0b11111, 0b00001, 0b00001, 0b00001, 0b11111, 0b10000, 0b10000, 0b10000, 0b11111
db 0b11111, 0b00001, 0b00001, 0b00001, 0b01111, 0b00001, 0b00001, 0b00001, 0b11111
db 0b10001, 0b10001, 0b10001, 0b10001, 0b11111, 0b00001, 0b00001, 0b00001, 0b00001
db 0b11111, 0b10000, 0b10000, 0b10000, 0b11111, 0b00001, 0b00001, 0b00001, 0b11111
db 0b11111, 0b10000, 0b10000, 0b10000, 0b11111, 0b10001, 0b10001, 0b10001, 0b11111
db 0b11111, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b00001
db 0b01110, 0b10001, 0b10001, 0b10001, 0b01110, 0b10001, 0b10001, 0b10001, 0b01110
db 0b01110, 0b10001, 0b10001, 0b10001, 0b01111, 0b00001, 0b00001, 0b00001, 0b01110
db 0b00000, 0b00000, 0b01100, 0b01100, 0b00000, 0b01100, 0b01100, 0b00000, 0b00000
db 0b00000, 0b00000, 0b01100, 0b01100, 0b00000, 0b01100, 0b00100, 0b01000, 0b00000
db 0b00000, 0b00000, 0b00010, 0b00100, 0b01000, 0b00100, 0b00010, 0b00000, 0b00000
db 0b00000, 0b00000, 0b00000, 0b01110, 0b00000, 0b01110, 0b00000, 0b00000, 0b00000
db 0b00000, 0b00000, 0b01000, 0b00100, 0b00010, 0b00100, 0b01000, 0b00000, 0b00000
db 0b01110, 0b10001, 0b00001, 0b00001, 0b00010, 0b00100, 0b00100, 0b00000, 0b00100
db 0b00000, 0b01110, 0b10001, 0b10101, 0b11011, 0b10111, 0b10001, 0b01110, 0b00000
db 0b01110, 0b10001, 0b10001, 0b10001, 0b11111, 0b10001, 0b10001, 0b10001, 0b10001
db 0b11110, 0b10001, 0b10001, 0b10001, 0b11110, 0b10001, 0b10001, 0b10001, 0b11110
db 0b01111, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b01111
db 0b11110, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b11110
db 0b11111, 0b10000, 0b10000, 0b10000, 0b11110, 0b10000, 0b10000, 0b10000, 0b11111
db 0b11111, 0b10000, 0b10000, 0b10000, 0b11110, 0b10000, 0b10000, 0b10000, 0b10000
db 0b01111, 0b10000, 0b10000, 0b10000, 0b10111, 0b10001, 0b10001, 0b10001, 0b01111
db 0b10001, 0b10001, 0b10001, 0b10001, 0b11111, 0b10001, 0b10001, 0b10001, 0b10001
db 0b11111, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b11111
db 0b11111, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b11000
db 0b10010, 0b10010, 0b10100, 0b10100, 0b11000, 0b10100, 0b10100, 0b10010, 0b10010
db 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b11111
db 0b11011, 0b10101, 0b10101, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001
db 0b10001, 0b11001, 0b11001, 0b10101, 0b10101, 0b10101, 0b10011, 0b10011, 0b10001
db 0b01110, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b01110
db 0b11110, 0b10001, 0b10001, 0b10001, 0b11110, 0b10000, 0b10000, 0b10000, 0b10000
db 0b01110, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10101, 0b10011, 0b01110
db 0b11110, 0b10001, 0b10001, 0b10001, 0b11110, 0b10001, 0b10001, 0b10001, 0b10001
db 0b01111, 0b10000, 0b10000, 0b10000, 0b01110, 0b00001, 0b00001, 0b00001, 0b11110
db 0b11111, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100
db 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b01110
db 0b10001, 0b10001, 0b10001, 0b01010, 0b01010, 0b01010, 0b00100, 0b00100, 0b00100
db 0b10001, 0b10001, 0b10001, 0b10001, 0b10001, 0b10101, 0b10101, 0b10101, 0b01010
db 0b10001, 0b10001, 0b01010, 0b01010, 0b00100, 0b01010, 0b01010, 0b10001, 0b10001
db 0b10001, 0b10001, 0b01010, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100
db 0b11111, 0b00001, 0b00001, 0b00010, 0b00100, 0b01000, 0b10000, 0b10000, 0b11111
db 0b00110, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00110
db 0b00000, 0b01000, 0b01000, 0b00100, 0b00100, 0b00100, 0b00010, 0b00010, 0b00000
db 0b01100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b01100
db 0b00100, 0b01010, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b11111
db 0b00100, 0b00010, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b00000
db 0b00000, 0b00000, 0b00000, 0b01110, 0b00001, 0b01111, 0b10001, 0b10001, 0b01111
db 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b11110, 0b10001, 0b10001, 0b11110
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b01110, 0b10000, 0b10000, 0b01110
db 0b00001, 0b00001, 0b00001, 0b00001, 0b00001, 0b01111, 0b10001, 0b10001, 0b01111
db 0b00000, 0b00000, 0b00000, 0b00000, 0b01110, 0b10001, 0b11111, 0b10000, 0b01111
db 0b00110, 0b01000, 0b01000, 0b01000, 0b11100, 0b01000, 0b01000, 0b01000, 0b01000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00011, 0b00101, 0b00011, 0b00001, 0b00110
db 0b10000, 0b10000, 0b10000, 0b10000, 0b10000, 0b11110, 0b10001, 0b10001, 0b10001
db 0b00000, 0b00000, 0b00000, 0b00100, 0b00000, 0b00100, 0b00100, 0b00100, 0b00100
db 0b00000, 0b00000, 0b00100, 0b00000, 0b00100, 0b00100, 0b00100, 0b00100, 0b01000
db 0b10000, 0b10000, 0b10000, 0b10000, 0b10100, 0b11000, 0b10100, 0b10010, 0b10010
db 0b00000, 0b01000, 0b01000, 0b01000, 0b01000, 0b01000, 0b01000, 0b01000, 0b01000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b11010, 0b10101, 0b10001, 0b10001
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b11110, 0b10001, 0b10001, 0b10001
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b01110, 0b10001, 0b10001, 0b01110
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b11100, 0b10100, 0b11000, 0b10000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00110, 0b01010, 0b00110, 0b00010, 0b00001
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b10110, 0b11001, 0b10000, 0b10000
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b01100, 0b01000, 0b00100, 0b01100
db 0b00100, 0b00100, 0b00100, 0b00100, 0b01110, 0b00100, 0b00100, 0b00100, 0b00010
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b10001, 0b10001, 0b10001, 0b01111
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b10001, 0b10001, 0b01010, 0b00100
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b10001, 0b10001, 0b10101, 0b01010
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b10001, 0b01110, 0b01110, 0b10001
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b10001, 0b01010, 0b00100, 0b00100
db 0b00000, 0b00000, 0b00000, 0b00000, 0b00000, 0b11110, 0b00110, 0b11000, 0b11110
db 0b00010, 0b00100, 0b00100, 0b00100, 0b01000, 0b00100, 0b00100, 0b00100, 0b00010
db 0b00000, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00100, 0b00000
db 0b01000, 0b00100, 0b00100, 0b00100, 0b00010, 0b00100, 0b00100, 0b00100, 0b01000
db 0b00000, 0b00000, 0b00000, 0b01000, 0b10101, 0b00010, 0b00000, 0b00000, 0b00000
db 0b00000, 0b10000, 0b10100, 0b11000, 0b11111, 0b11000, 0b10100, 0b10000, 0b00000