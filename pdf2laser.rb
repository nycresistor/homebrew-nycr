class Pdf2laser < Formula
  url "http://zell.io/dist/src/pdf2laser/pdf2laser-0.3.0.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha1 "3936c6b038ea02ce101431b3d503e290872a693d"

  depends_on "ghostscript"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
