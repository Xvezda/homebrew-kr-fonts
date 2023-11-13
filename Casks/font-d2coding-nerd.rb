cask "font-d2coding-nerd" do
  version :latest
  sha256 :no_check

  url "https://github.com/kelvinks/D2Coding_Nerd.git"
    verified: "github.com/kelvinks/D2Coding_Nerd",
    branch: "master"

  name "D2 Coding Nerd"
  homepage "https://github.com/kelvinks/D2Coding_Nerd"

  font "D2Coding/D2Coding v.1.3.2 Nerd Font Complete.ttf"
  font "D2Coding/D2Coding v.1.3.2 Bold Nerd Font Complete.ttf"
end
