require 'url_builder/version'
require 'uri'

# UrlBuilder allows you to easily create urls that can be expanded with paths
# and query strings.
class UrlBuilder
  def initialize(url)
    @url = url
    @url = URI.parse("https://#{@url}").to_s if scheme.nil?
  end

  # Expands the base url with a path and optional query string. Returns the url
  # as a string, since this should be the end of processing.
  def expand(path, query = nil)
    url = URI.parse(@url).merge(path)
    url.query = query.map { |k, v| "#{k}=#{v}" }.join('&') if query
    url.to_s
  end

  def to_s
    @url
  end

  private

  def scheme
    URI.split(@url)[0]
  end
end
