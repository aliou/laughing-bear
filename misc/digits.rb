class Bignum
  def digits
    nb = self
    digits = []
    while nb > 0
      digits << nb % 10 
      nb /= 10
    end
    digits.reverse
  end
end
