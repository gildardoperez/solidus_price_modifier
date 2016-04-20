require "spec_helper"

describe Spree::Variant do
  it { is_expected.to respond_to(:price_modifier_amount) }
  it { is_expected.to respond_to(:price_modifier_amount_in) }
end
