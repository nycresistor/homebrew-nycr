class Pdf2laser < Formula
  url "http://zell.io/dist/src/pdf2laser/pdf2laser-0.3.3.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha256 "e3258570ce01aff54f6870aaeec606f56c20e7683b1f6a1b0b9452b80722f600"

  depends_on "ghostscript"

  def install
    system "./configure", "--prefix=#{prefix}", "--sysconfdir=#{etc}"
    system "make"
    system "make", "install"
  end
end
