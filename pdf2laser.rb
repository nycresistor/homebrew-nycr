class Pdf2laser < Formula
  url "http://zell.io/dist/src/pdf2laser/pdf2laser-0.2.1.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha1 "4a2e117e8ffe905753cc57c53e62d845637c16da"

  depends_on "ghostscript"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end
end
