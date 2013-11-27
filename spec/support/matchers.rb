RSpec::Matchers.define :be_newer_than do |expected|
  match do |actual|
    actual.created_at > expected.created_at
  end
end

RSpec::Matchers.define :be_newest_of do |expected|
  match do |actual|
    expected.sort_by(&:created_at).last == actual
  end
end


RSpec::Matchers.define :be_older_than do |expected|
  match do |actual|
    actual.created_at < expected.created_at
  end
end

RSpec::Matchers.define :be_oldest_of do |expected|
  match do |actual|
    expected.sort_by(&:created_at).first == actual
  end
end
