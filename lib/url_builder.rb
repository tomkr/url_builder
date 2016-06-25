require 'url_builder/version'
require 'uri'

# UrlBuilder allows you to easily create urls that can be expanded with paths
# and query strings.
class UrlBuilder
  def initialize(url)
    @url = url
    @url = URI.parse("https://#{@url}").to_s if scheme.nil?
  end

  def to_s
    @url
  end

  private

  def scheme
    URI.split(@url)[0]
  end
end
