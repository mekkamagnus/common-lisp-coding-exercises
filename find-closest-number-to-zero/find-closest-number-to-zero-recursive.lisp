(defun find-closest-to-zero-recursive (nums)
  "Recursively returns the number in the list NUMS that is closest to zero.
If two numbers are equally close, returns the larger number.
Signals an error if the list is empty."
  (when (null nums)
    (error "Input list is empty."))
  (if (null (cdr nums))
      (first nums)
      (let* ((current (first nums))
             (rest-result (find-closest-to-zero-recursive (rest nums))))
        (cond
          ((< (abs current) (abs rest-result)) current)
          ((> (abs current) (abs rest-result)) rest-result)
          (t (if (> current rest-result)
                 current
                 rest-result))))))
