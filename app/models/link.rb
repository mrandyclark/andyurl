class Link < ActiveRecord::Base

  validates_presence_of :url
  
  def url=(value)
    unless value =~ /https?:\/\/.*/
       write_attribute :url, "http://" + value.to_s
    else
       write_attribute :url, value
    end
  end
end
