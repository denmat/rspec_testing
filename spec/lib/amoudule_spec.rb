require 'amodule'

describe 'Amodule' do

  class DummyClass
  end

  let(:dummyclass) do
    dc = DummyClass.new
    dc.extend(Amodule)
  end

  describe '#something' do
    it 'should print something' do 
  	  expect(dummyclass.something).to eq('something')
  	end
  end
end
