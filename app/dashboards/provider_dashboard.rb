require "administrate/base_dashboard"

class ProviderDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    pdf_attachment: Field::HasOne,
    pdf_blob: Field::HasOne,
    id: Field::Number,
    name: Field::String,
    focus: Field::String,
    contact: Field::String,
    address: Field::String,
    phone: Field::String,
    rfc: Field::String,
    email: Field::String,
    website: Field::String,
    reference: Field::String,
    reference2: Field::String,
    reference3: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :pdf_attachment,
    :pdf_blob,
    :id,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :pdf_attachment,
    :pdf_blob,
    :id,
    :name,
    :focus,
    :contact,
    :address,
    :phone,
    :rfc,
    :email,
    :website,
    :reference,
    :reference2,
    :reference3,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :pdf_attachment,
    :pdf_blob,
    :name,
    :focus,
    :contact,
    :address,
    :phone,
    :rfc,
    :email,
    :website,
    :reference,
    :reference2,
    :reference3,
  ].freeze

  # Overwrite this method to customize how providers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(provider)
  #   "Provider ##{provider.id}"
  # end
end
