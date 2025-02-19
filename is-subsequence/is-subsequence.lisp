;; Brute force solution
(defun is-subsequence-p (s t)
  "Returns T if s is a subsequence of t, otherwise NIL.
A subsequence means that all characters in s appear in t in the same order."
  (let ((i 0) (j 0)
        (len-s (length s))
        (len-t (length t)))
    (loop while (and (< i len-s) (< j len-t)) do
         (if (char= (char s i) (char t j))
             (incf i))
         (incf j))
    (= i len-s)))
