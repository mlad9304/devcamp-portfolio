class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for :technologies, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true

    validates_presence_of :title, :body

    mount_uploader :thumb_image, PortfolioUploader
    mount_uploader :main_image, PortfolioUploader

    def self.angular
        where(subtitle: 'Angular')
    end

    scope :by_position, -> { order 'position ASC' }
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on rails') }

end
