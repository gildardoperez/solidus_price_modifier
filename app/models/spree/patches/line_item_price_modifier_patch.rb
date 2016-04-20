module Spree
  module Patches::LineItemPriceModifierPatch
    # Sets options on the line item.
    #
    # The option can be arbitrary attributes on the LineItem. If no price is given in the options,
    # this will call the legacy `PriceModifier` line item pricer.
    #
    # @param options [Hash] options for this line item
    def options=(options = {})
      super
      # There's no need to call a pricer if we've set the price directly.
      unless options.key?(:price)
        self.money_price = variant.price_for(pricing_options)
      end
    end
  end
end
