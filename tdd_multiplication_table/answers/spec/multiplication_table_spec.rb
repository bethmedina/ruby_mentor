require "./lib/multiplication_table.rb"

describe MultiplicationTable do
  it "should be instance of multiplication table" do
    subject.should be_a(MultiplicationTable)
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

  describe "#header_row" do
    it "should return an array ([1, 2, 3, 4, 5, 6, 7, 8, 9])" do
      subject.header_row.should == [1..9]
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
  end

  describe "#to_s" do
    context "for a 9x9 table" do
      it "should look like a multiplication table"
    end

    context "for a 5x5 table" do
      it "should look like a multiplication table"
    end
  end
end