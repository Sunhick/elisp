;; Lisp data types:

;; 1. Integer types
+1
-1
1.
1

;; 2. Floating point types
15e4
44.44
.15e4

;; 3. Character types
?A
?a
?q
?\M-x (meta chars)
?\C-x (control chars)

;; 4. Symbol types
:Foo
:foo
:bar
:boo

;; 5. Sequence types
;; Two types: lists(dynamic size) and arrays(fixed size).
;; Arrays: vectors, strings, char-table and bool-vectors

;; Cons cells and list types
;; Cons cells: think of nodes in linked lists. consists of two slots car and cdr.
;; car holds value and cdr contains contents following the car.
;; keywords: atoms, symbols
'(x y z)
(type-of car'(a b c e))
'()
nil

;; cons -- dotted notation
(a . b)                                 ;a -> car , b -> cdr
(type-of '((1 . "3")))
(consp '(five . "5"))
(type-of '(five . "5"))

;; sequences are composed using cons and lists are no exception.
'(1 2 3 4)
'(1 . (2 . (3 . (4 . nil))))

;; Association list types (alist)
;; keywords: (key value) pairs, dictionary, lookup table but inefficient.
;; for efficient look up use hash tables.
'((rose . red) (lily . white) (buttercup . yellow))

;; 6. Array types
;; contigious blocks of memory. lisp array are all 1-d and doesn't support
;; multi-dimensional arrays.

;; String types
"firefox and chrome"

"have fun! later gater"

"mutli
lined \
comment but this and previous line"

;; Vector types
(type-of (aref [1 2 (three)] 2))

;; Char-table types

;; Bool vector types
(make-bool-vector 3 t)

;; 7. Hash table
(make-hash-table)

;; 8. Function table

;; 9. Macro types

;; 10. Record types

;; 11. Autoload types

;; 12. Finalizer types
