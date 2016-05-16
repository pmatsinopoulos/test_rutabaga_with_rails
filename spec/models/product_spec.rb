require 'rails_helper'

RSpec.describe Product, type: :model do
  it { feature }

  step "A Product" do
    @product = build :product
  end

  step "It does not have a name" do
    @product.name = nil
  end

  step "Product is not valid due to name missing" do
    expect(@product.valid?).to eq(false)

    expect(@product.errors[:name]).to include("can't be blank")
  end
end
