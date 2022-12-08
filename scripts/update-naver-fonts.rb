#!/usr/bin/env ruby

require 'net/http'

# TODO: implement nanum & maru

def generate_clova_casks
  uri = URI('https://hangeul.naver.com/font/clova')

  html = Net::HTTP.get(uri)
  scans = html.scan(/data-url="[^"]+\.ttf"/)

  font_uris = scans.collect {|line| line.split('"')[1]}
  font_filenames = font_uris.collect {|uri| uri.split('/')[-1]}

  def filename_to_template(filename)
    cask_name = filename
      .gsub(/[A-Z]/, '-\&')
      .gsub(/^-/, '')
      .downcase
      .gsub(/\.ttf$/, '')
      .gsub(/-ce$/, '')

    font_name = filename
      .gsub(/[A-Z]/, ' \&')
      .gsub(/\.ttf$/, '')
      .strip

    base_uri = "https://hangeul.naver.com/hangeul_static/webfont/clova"

    template = {
      "name" => "#{cask_name}.rb",
      "source" => <<~EOF
        cask "#{cask_name}" do
          version :latest
          sha256 :no_check

          url "#{base_uri}/#{filename}"
          name "#{font_name}"
          homepage "https://hangeul.naver.com/font/clova"

          font "#{filename}"
        end
      EOF
    }
  end

  casks = font_filenames
    .collect {
      |filename| {
        "filename" => filename,
        "template" => filename_to_template(filename)
      }
    }
end

base_path = File.expand_path("../", File.dirname(__FILE__))

casks = generate_clova_casks
casks.each {|cask|
  cask_filename = File.join(base_path, "Casks", cask["template"]["name"])
  File.open(cask_filename, "w") {|f|
    f.write(cask["template"]["source"])
  }
}

