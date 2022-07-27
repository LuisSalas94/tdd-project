require './solver'
describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do 
    it 'should return a Solver object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'should return the factorial of the given number' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'should return 1 for 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should raise an error for negative numbers' do
      expect { Solver.new.factorial(-1) }.to raise_error(ArgumentError)
    end

  end


end