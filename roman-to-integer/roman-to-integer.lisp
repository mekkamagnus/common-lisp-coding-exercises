;; https://leetcode.com/problems/roman-to-integer/description/
(defun roman-char-value (c)
  "Returns the integer value corresponding to a single Roman numeral character C."
  (case c
    (#\I 1)
    (#\V 5)
    (#\X 10)
    (#\L 50)
    (#\C 100)
    (#\D 500)
    (#\M 1000)
    (otherwise (error "Invalid Roman numeral character: ~A" c))))

(defun roman-to-integer (s)
  "Converts the Roman numeral string S to an integer.
It processes each character in S, subtracting the value if a smaller numeral precedes a larger one,
or adding it otherwise."
  (let ((result 0)
        (len (length s)))
    (loop for i from 0 below len do
         (let ((current (roman-char-value (char s i)))
               (next (if (< i (1- len))
                         (roman-char-value (char s (1+ i)))
                         0)))
           (if (< current next)
               (decf result current)
               (incf result current))))
    result))
