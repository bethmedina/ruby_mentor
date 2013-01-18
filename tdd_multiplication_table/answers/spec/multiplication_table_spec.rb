require "./lib/multiplication_table.rb"

describe MultiplicationTable do
  it "should be instance of multiplication table" do
    subject.should be_a(MultiplicationTable)
  end

  describe "#header_row" do
    it "should return an array ([1, 2, 3, 4, 5, 6, 7, 8, 9])" do
      subject.header_row.should == (1..9).to_a
    end
  end

  describe "#new" do
    describe "size" do
      it "has a default of 9" do
        subject.content.should have(9).items
      end

      it "can be smaller" do
        MultiplicationTable.new(5).content.should have(5).items
      end

      it "can be bigger" do
        MultiplicationTable.new(10).content.should have(10).items
      end
    end
  end

  describe "#content" do
    it "should return an array of arrays (9 rows of 9 element arrays)" do
      subject.content.should have(9).items
      subject.content.each do |content_row|
        content_row.should have(9).items
      end
    end
    it "should contain the first row of the table ([1, 2, 3, 4, 5, 6, 7, 8, 9])" do
      subject.content[0].should == (1..9).to_a
    end
    it "should contain the second row of the table ([2, 4, 6, 8, 10, 12, 14, 16, 18])" do
      subject.content[1].should == [2, 4, 6, 8, 10, 12, 14, 16, 18]
    end
    it "should contain the ninth row ([9, 18, 27, 36, 45, 54, 63, 72, 81])" do
      subject.content[8].should == [9, 18, 27, 36, 45, 54, 63, 72, 81]
    end
    it "should respect the size of the table" do
      table = MultiplicationTable.new(5)
      table.content.should have(5).items
      table.content.each do |content_row|
        content_row.should have(5).items
      end
    end
  end

  describe "#to_s" do
    context "for a 9x9 table" do
      it "should look like a multiplication table" do
        expected_table = <<-EOF
             *   1   2   3   4   5   6   7   8   9
             1   1   2   3   4   5   6   7   8   9
             2   2   4   6   8  10  12  14  16  18
             3   3   6   9  12  15  18  21  24  27
             4   4   8  12  16  20  24  28  32  36
             5   5  10  15  20  25  30  35  40  45
             6   6  12  18  24  30  36  42  48  54
             7   7  14  21  28  35  42  49  56  63
             8   8  16  24  32  40  48  56  64  72
             9   9  18  27  36  45  54  63  72  81
        EOF
        subject.to_s.should == expected_table.gsub(/^\s+/, '   ')
      end
    end

    context "for a 5x5 table" do
      it "should look like a multiplication table" do
        expected_table = <<-EOF
             *   1   2   3   4   5
             1   1   2   3   4   5
             2   2   4   6   8  10
             3   3   6   9  12  15
             4   4   8  12  16  20
             5   5  10  15  20  25
        EOF
        MultiplicationTable.new(5).to_s.should == expected_table.gsub(/^\s+/, '   ')
      end
    end
  end
end