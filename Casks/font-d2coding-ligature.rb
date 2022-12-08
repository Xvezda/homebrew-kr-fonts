cask "font-d2coding-ligature" do
  version "1.3.2"
  sha256 "0f1c9192eac7d56329dddc620f9f1666b707e9c8ed38fe1f988d0ae3e30b24e6"

  url "https://github.com/naver/d2codingfont/releases/download/VER#{version}/D2Coding-Ver#{version}-20180524.zip"
  name "D2 Coding Ligature"
  homepage "https://github.com/naver/d2codingfont"

  font "D2CodingLigature/D2Coding-Ver#{version}-20180524-ligature.ttf"
  font "D2CodingLigature/D2CodingBold-Ver#{version}-20180524-ligature.ttf"
end
