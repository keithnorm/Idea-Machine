require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  
  def teardown
    Idea.destroy_all
  end
    
  test 'a vote with value 1 increases the votes_counter_cache' do
    idea = Idea.make
    assert_equal idea.votes_counter_cache, 0
    idea.votes.create(:value => 1)
    assert_equal idea.votes_counter_cache, 1
  end
  
  test 'a vote with value -1 decreases the votes_counter_cache' do
    idea = Idea.make(:votes_counter_cache => 2)
    assert_equal idea.votes_counter_cache, 2
    idea.votes.create(:value => -1)
    assert_equal idea.votes_counter_cache, 1
  end
  
end
