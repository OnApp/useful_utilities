module UsefulUtilities
  # I18n utilities
  module I18n
    extend self

    # @param object [Object]
    # @return [String] humanized name
    def humanize_type(object)
      klass = case object
              when Class then object
              when object.respond_to?(:klass) then object.klass
              else
                object.class
              end

      klass.respond_to?(:model_name) ? klass.model_name.human : klass.to_s.underscore.humanize
    end
  end
end
