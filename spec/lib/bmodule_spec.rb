require 'bmodule'
require 'cmodule'

describe 'Bmodule' do 

	class DummyClass 
	end

	subject(:dummyclass) do 
		dc = DummyClass.new
		dc.extend(Bmodule)
	end

	describe '#config' do
		it 'should return a value for user' do 
			expect(dummyclass.config['user']).to eq('me')
		end
	end

	describe '#nothing' do 
		it 'should return nothing' do 
			expect(dummyclass.nothing).to eq('nothing')
		end
	end

	describe '#getit' do
	  it 'should return nothing' do
	  	expect(dummyclass.getit).to eq('nothing')
	  end
	end

  describe '#print_tmp' do
  	it 'should print tmp' do
  		allow(dummyclass).to receive(:can_do).and_return('nobody')
  		allow(dummyclass).to receive(:system).and_return('that')
  		expect(dummyclass.print_tmp).to eq('that')
  	end
  end

end