class Pdf2laser < Formula
  url "http://zell.io/dist/src/pdf2laser/pdf2laser-0.3.1.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha1 "b190443b7c834b3afdcb671e7e3ec93be498c12c"

  depends_on "ghostscript"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
