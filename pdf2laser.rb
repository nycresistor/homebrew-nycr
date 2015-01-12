class Pdf2laser < Formula
  url "http://zell.io/dist/pdf2laser/pdf2laser-0.1.0.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha1 "cb32022dd54bda5427592dc15c243d77acc5a247"

  def install
    system "make"
    system "install", "-d", "-m", "755", "#{bin}"
    system "install", "epilog", "#{bin}/pdf2laser"
  end
end
