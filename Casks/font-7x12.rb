cask "font-7x12" do
  version "0.0.1"
  sha256 "5e7bbc08fb28bcda5edac8362fcb4a4dd28cab3f36ffa416c8be1882bd9cdcc4"

  url "https://github.com/iolo/7x12-fonts/releases/download/v#{version}/7x12-fonts-all.zip"
  name "7x12 Fonts"
  homepage "https://iolo.kr/7x12-fonts/"

  font "7x12.otf"
  font "7x12x3.otf"
end
