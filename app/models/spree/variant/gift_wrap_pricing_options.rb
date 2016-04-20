module Spree
  class Variant
    class GiftWrapPricingOptions < Spree::Variant::PricingOptions
      attr_accessor :line_item_options

      def self.from_line_item(line_item)
        super.tap do |pricing_options|
          pricing_options.line_item_options = { gift_wrap: line_item.gift_wrap }
        end
      end

      def initialize(desired_attributes = {})
        @line_item_options = {}
        super
      end
    end
  end
end
