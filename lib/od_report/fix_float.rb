module FixFloat
  DELIMITED_REGEX = /(\d)(?=(\d\d\d)+(?!\d))/
  DELIMETER = ' '

  refine Float do
    def to_s
      left, right = round(2).inspect.to_s.split('.')
      left.gsub!(DELIMITED_REGEX) { "#{$1}#{DELIMETER}" }
      [left, right].compact.join(',')
    end
  end
end
