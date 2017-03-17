class PhoneNumber
  def initialize(number)
    @number = number
  end

  def normalized
    @number.gsub(/\D+/, "")
  end
end
