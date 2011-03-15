require "helper"
require "mocha"

class TestLunrSearch < Test::Unit::TestCase

  # FIXME: ugly. 
  class ::Searchable
    include Lunr::Model
  end

  Sunspot.setup ::Searchable do
    string :bar
    string :foo
  end

  context "A Searchable model" do
    
    setup do 
      @searchable = ::Searchable
      @search = Lunr::Search.new @searchable do
        with :foo, "bar"
      end   
    end
    
    should "respond to search" do
      puts @searchable.respond_to?(:search)
    end
    
    should "have some stuff" do
      
      assert_equal @searchable, @search.klass
      assert_equal "type:Searchable", @search.params[:fq].first
      assert @search.params[:fq].include?("foo_s:bar")
    end
    
    should "have scopes" do
      
      @search.scope { with :foo, "blergh" }
      @search.scope { with :bar, "corge"  }
    
      assert @search.params[:fq].include?("foo_s:blergh")
      assert @search.params[:fq].include?("bar_s:corge")
    end
    
    should "only execute search once" do
      @search.stubs(:executed?).returns true
    
      assert_raises Lunr::AlreadyExecuted do
        @search.scope { with :foo, "hello" }
      end
    end
    
  end
  
  
  
end


