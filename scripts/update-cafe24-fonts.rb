#!/usr/bin/env ruby

require 'net/http'
require 'json'

def generate_cafe24_casks
  uri = URI('https://img.cafe24.com/csdstatic/freefonts/data/1.0/fonts_ko.json')

  body = Net::HTTP.get(uri)
  json = JSON.parse(body)

  fonts = json["fonts"]
  names = fonts.map {|font| font["name"]["en"]}
  urls = fonts.map {|font| font["path"]["download"]}
  casks = names.zip(urls).map {|name, url|
    cask_name = name
      .gsub(/ /, '-')
      .gsub(/[A-Z]/, '-\&')
      .gsub(/^-/, '')
      .gsub(/\-{2,}/, '-')
      .downcase

    zip_name = URI(url).path.split('/')[-1]

    cask = {
      "name" => "font-#{cask_name}.rb",
      "source" => <<~EOF
        cask "font-#{cask_name}" do
          version :latest
          sha256 :no_check

          url "#{url.start_with?('https:') ? url : "https:#{url}"}"
          name "#{name}"
          homepage "https://fonts.cafe24.com"

          font "#{zip_name.gsub(/\.zip$/, '')}/#{zip_name.gsub(/\.zip$/, '')}.otf"
        end
      EOF
    }
    cask
  }
  casks
end

base_path = File.expand_path("../", File.dirname(__FILE__))

casks = generate_cafe24_casks
casks.each {|cask|
  cask_filename = File.join(base_path, "Casks", cask["name"])
  File.open(cask_filename, "w") {|f|
    f.write(cask["source"])
  }
}
