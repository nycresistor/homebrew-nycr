class Pdf2laser < Formula
  url "http://zell.io/dist/src/pdf2laser/pdf2laser-0.3.3.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha1 "b47d6faa90aa112b4fd52d4d59c96a929541d208"

  depends_on "ghostscript"

  def install
    system "./configure", "--prefix=#{prefix}", "--sysconfdir=#{etc}"
    system "make"
    system "make", "install"
  end
end
