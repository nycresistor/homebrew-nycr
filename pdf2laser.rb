class Pdf2laser < Formula
  url "http://zell.io/dist/src/pdf2laser/pdf2laser-0.2.0.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha1 "e61a97327206698f29519f1fa9173cfe6d7a17d5"

  revision 1

  depends_on "ghostscript"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
