cask "font-kbl-jump" do
  version :latest
  sha256 :no_check

  url "https://kbl.or.kr/files/kbl/font/OTF.zip"
  name "KBL Jump"
  homepage "https://www.kbl.or.kr/intro/font"

  font "OTF/KBLJump_B.otf"
  font "OTF/KBLJump_EB_Condensed.otf"
  font "OTF/KBLJump_EB_Extended.otf"
  font "OTF/KBLJump_R.otf"
end
