;; LeetCode 2239
;; https://leetcode.com/problems/find-closest-number-to-zero/description/

(defun find-closest-to-zero (nums)
  "Returns the number in the list NUMS that is closest to zero.
If two numbers are equally close, returns the larger one."
  (when (null nums)
    (error "Input list is empty."))
  (let ((closest (first nums)))
    (dolist (num (rest nums) closest)
      (cond ((< (abs num) (abs closest))
             (setf closest num))
            ((= (abs num) (abs closest))
             (when (> num closest)
               (setf closest num)))))
    closest))
