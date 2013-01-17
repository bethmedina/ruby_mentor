class MultiplicationTable
  def initialize
  end

  def header_row
    [1..9]
  end

  def content
    (1..9).map do |row_number|
      content_row(row_number)
    end
  end

private

  def content_row(row_number)
    (1..9).map do |column_number|
      column_number * row_number
    end
  end
end