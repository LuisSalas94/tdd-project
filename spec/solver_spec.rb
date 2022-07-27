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

  describe '#reverse' do
    it 'Should return the reversed string' do
      expect(@solver.reverse('hola')).to eql('aloh')
    end

    it 'Should raise an exception if is not a string' do
      expect { Solver.new.reverse(2) }.to raise_error(ArgumentError)
    end
  end

  describe '#fizzbuzz' do
    it 'Should return the result' do
      expect(@solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'Should return the result' do
      expect(@solver.fizzbuzz(5)).to eql('buzz')
    end
    it 'Should return the result' do
      expect(@solver.fizzbuzz(3)).to eql('fizz')
    end
    it 'Should return the result' do
      expect(@solver.fizzbuzz(2)).to eql('2')
    end
    it 'Should raise an exception if is not a positive number or integer' do
      expect { Solver.new.fizzbuzz(-2) }.to raise_error(ArgumentError)
      expect { Solver.new.fizzbuzz('hola') }.to raise_error(ArgumentError)
    end
  end
end
