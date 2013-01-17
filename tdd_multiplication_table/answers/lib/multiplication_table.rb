class MultiplicationTable
  def initialize(size=9)
    @size = size
  end

  def header_row
    [1..@size]
  end

  def content
    (1..@size).map do |row_number|
      content_row(row_number)
    end
  end

private

  def content_row(row_number)
    (1..@size).map do |column_number|
      column_number * row_number
    end
  end
end