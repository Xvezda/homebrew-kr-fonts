cask "font-d2coding-nerd-ligature" do
  version :latest
  sha256 :no_check

  url "https://github.com/kelvinks/D2Coding_Nerd.git"
    verified: "github.com/kelvinks/D2Coding_Nerd",
    branch: "master"

  name "D2 Coding Nerd Ligature"
  homepage "https://github.com/kelvinks/D2Coding_Nerd"

  font "D2CodingLigature/D2Coding v.1.3.2 ligature Nerd Font Complete.ttf"
  font "D2CodingLigature/D2Coding v.1.3.2 ligature Bold Nerd Font Complete.ttf"
end
