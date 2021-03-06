require 'singleton'
require 'thailand/region'

module Thailand
  class Country < Region
    include Singleton

    def name
      Thailand.i18n_backend.translate 'thailand.name'
    end

    def official_name
      Thailand.i18n_backend.translate 'thailand.official_name'
    end

    def subregion_data_path
      'region.yml'
    end

    def subregion_class
      Province
    end

    def path
      'thailand'
    end

    def inspect
      "#<#{self.class} name: \"#{name}\", official_name: \"#{official_name}\">"
    end

    alias_method :provinces, :subregions
    alias_method :provinces?, :subregions?
    alias_method :changwat, :subregions
    alias_method :changwat?, :subregions?
  end
end
