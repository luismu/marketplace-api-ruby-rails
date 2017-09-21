class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include Authenticable

  def index
    render text: 'Market Place API ruby on rails - Luis Murillo MAX store'
  end

  protected
  
  # paginated_array returns an hash of pagination informations for a given paginated_arry
  def app_paginator(paginated_array,per_page)
    {per_page:per_page,
      next_page: next_page_url(paginated_array),
      previous_page: previous_page_url(paginated_array),
      total_pages:paginated_array.total_pages,
    total_objects:paginated_array.total_count }
  end

  private
  # next_product_url generates a url from a paginated list of products
  # <ActiveRecord::Relation[<Product>]> => string
  def next_page_url(paginated_array)
    url_for controller: 'products' ,action: 'index',page: paginated_array.next_page
  end

  # previous_product_url generates a url from a paginated list of products
  # links to the previous product page
  # <ActiveRecord::Relation[<Product>]> => string
  def previous_page_url(paginated_array)
    url_for controller: 'products' ,action: 'index',page: paginated_array.prev_page
  end
end
