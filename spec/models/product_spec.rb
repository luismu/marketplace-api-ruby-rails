require 'rails_helper'
require 'spec_helper'

describe Product do
  let(:product){FactoryGirl.build :product}
  subject {product}
  it {should respond_to(:title)}
  it {should respond_to(:price)}
  it {should respond_to(:published)}
  it {should respond_to(:user_id)}
  it {should_not be_published}

  #validation
  it {should validate_presence_of :title}
  it {should validate_presence_of :price}
  it {should validate_numericality_of(:price).is_greater_than_or_equal_to(0)}
  it {should validate_presence_of :user_id}
  it {should belong_to :user}

  describe '#products assocation' do
    before do
      @user = FactoryGirl.build(:user)
      3.times{ FactoryGirl.create :product,user: @user }
      describe "destroy user" do
        
        before do
          @products = @user.products
          @user.destroy
        end

        it 'should raise an error' do
          @products.each { |product|
            expect(Product.find(product)).to raise_error ActiveRecord::RecordNotFound
          }
        end

      end

    end

  end

end