describe 27.5 do
  it { should be_within(0.5).of(27.9) }
  it { should be_within(0.5).of(27.1) }
  it { should_not be_within(0.5).of(26.9) }
  it { should_not be_within(0.5).of(28.1) }
end
