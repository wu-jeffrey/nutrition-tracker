module MathStringParserService
  def self.run(math_string)
    # remove all whitespace
    str = math_string.to_s.gsub(/\s+/, "")
    if (str =~ /[^0-9*+\/-]/)
      str = 0
    end
    eval(str.to_s)
  end
end