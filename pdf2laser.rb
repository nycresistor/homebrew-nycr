class Pdf2laser < Formula
  desc "CLI tool printing pdf files to an Epilog laser cutter over the network"
  homepage "https://github.com/zellio/pdf2laser"
  url "https://github.com/zellio/pdf2laser/archive/v0.5.0.tar.gz"
  sha256 "34920cb0a1e16acd879468536889d211daf2ebf2fce5f4d742d85179eb18616d"

  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "ghostscript"

  def install
    ENV["PATH"] += ":/usr/local/bin"
    system "aclocal", "-I", "m5", "--install"
    system "autoheader"
    system "glibtoolize", "--force"
    system "automake", "--add-missing", "--foreign"
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
  end
end
