class MultiplicationTable

  def initialize(size=9)
    @size = size
  end

  def header_row
    content_row(1)
  end

  def content
    (1..@size).map do |row_number|
      content_row(row_number)
    end
  end

  def to_s
    content_string = "   *" + header_row.map { |item| sprintf("%4d", item) }.join("") + "\n"
    content_string += content.map.with_index do |content_row, index|
      content_row.map do |element|
        sprintf("%4d", element)
      end.join("").gsub(/^/, "   #{index + 1}")
    end.join("\n")
    content_string += "\n"
  end

  private

  def content_row(row_number)
    (1..@size).map do |column_number|
      column_number * row_number
    end
  end
end