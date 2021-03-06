require 'spec_helper'
require 'support/active_record'
require 'support/formats'

describe 'JSON for pusher' do
  include Support::ActiveRecord, Support::Formats

  let(:test) { Factory(:test) }

  it 'job:created' do
    json_for_pusher('job:created', test).should == {
      'id' => test.id,
      'build_id' => test.owner_id,
      'repository_id' => test.repository_id,
      'number' => '2.1',
      'queue' => 'builds.common',
    }
  end
end
