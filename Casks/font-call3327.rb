cask "font-call3327" do
  version :latest
  sha256 :no_check

  url "https://github.com/iolo/call3327-fonts.git",
      verified: "github.com/iolo/call3327-fonts",
      branch: "main"
  name "Call3327 Fonts"
  homepage "https://iolo.kr/call3327-fonts/"

  font "CALL3327.ttf"
  font "CALL3327_2.ttf"
  font "CALL3327_2s.ttf"
end
