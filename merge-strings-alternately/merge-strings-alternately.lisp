(defun merge-strings-alternately (word1 word2)
  "Merges two strings, WORD1 and WORD2, by alternating characters.
If one string is longer, its remaining characters are appended at the end."
  (let* ((len1 (length word1))
         (len2 (length word2))
         (max-len (max len1 len2))
         (result ""))
    (dotimes (i max-len result)
      (when (< i len1)
        (setf result (concatenate 'string result (subseq word1 i (1+ i)))))
      (when (< i len2)
        (setf result (concatenate 'string result (subseq word2 i (1+ i))))))))
