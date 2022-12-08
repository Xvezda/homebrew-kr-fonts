cask "font-spoqa-han-sans" do
  version "3.3.0"
  sha256 "cad46c24224ceb53181a8026c86a6c41abf740c67a7b14b15f722a79387bc644"

  url "https://github.com/spoqa/spoqa-han-sans/releases/download/v#{version}/SpoqaHanSansNeo_OTF_original.zip"
  name "Spoqa Han Sans Neo"
  homepage "http://www.spoqa-han-sans.com/"

  font "SpoqaHanSansNeo_OTF_original/SpoqaHanSansNeo-Bold.otf"
  font "SpoqaHanSansNeo_OTF_original/SpoqaHanSansNeo-Light.otf"
  font "SpoqaHanSansNeo_OTF_original/SpoqaHanSansNeo-Medium.otf"
  font "SpoqaHanSansNeo_OTF_original/SpoqaHanSansNeo-Regular.otf"
  font "SpoqaHanSansNeo_OTF_original/SpoqaHanSansNeo-Thin.otf"
end
