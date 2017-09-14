require 'rspec/expectations'

## matcher to validate if all elements in list are equals
RSpec::Matchers.define :all_list_elements_eq do |expected|
  match do |actual|
    actual.each do |i|
      expect(i).to eq(expected)
    end
  end
  failure_message_for_should do |actual|
    "expected that all elements in #{actual} list would be equals #{expected}"
  end
end

RSpec::Matchers.define :visual_match do |expected|
  match do |actual|
    base_path = File.expand_path('.', Dir.pwd) + '/screenshots/'
    file_atual = File.join(base_path, 'current_images/') + actual + '.png'
    file_baseline = File.join(base_path, 'baseline/') + expected + '.png'
    file_diff = File.join(base_path, 'diffs/')
                    .concat(actual)
                    .concat('_diff_')
                    .concat(expected)
                    .concat('.png')
    comparison = IMATCHER.compare(file_atual, file_baseline)
    @score = comparison.score
    comparison.difference_image.save(file_diff) if comparison.match? != true
    expect(comparison.match?).to be true
  end
  failure_message_for_should do ||
    "expected that two images are equals, but they are #{@score} different"
  end
end
