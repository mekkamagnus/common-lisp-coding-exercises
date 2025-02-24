(defun max-profit (prices)
  "Given a list of stock prices, returns the maximum profit achievable from a single buy and sell.
If no profit is possible, returns 0."
  (if (null prices)
      0
      (let ((min-price (first prices))
            (max-profit 0))
        (dolist (price (rest prices) max-profit)
          (when (< price min-price)
            (setf min-price price))
          (let ((potential-profit (- price min-price)))
            (when (> potential-profit max-profit)
              (setf max-profit potential-profit))))
        max-profit)))
