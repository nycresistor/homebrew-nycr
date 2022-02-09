class Pdf2laser < Formula
  desc "CLI tool printing pdf files to an Epilog laser cutter over the network"
  homepage "https://github.com/zellio/pdf2laser"
  url "https://github.com/zellio/pdf2laser/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "4c4b27c7e6f3eba9d5b9785e15e8bb88f871d6da79ca513af4cf04bb69980c89"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "bison" => :build
  depends_on "flex" => :build
  depends_on "libtool" => :build
  depends_on "ghostscript"

  def install
    ENV["PATH"] += ":/usr/local/bin:/opt/homebrew/bin"
    system "aclocal", "-I", "m4", "--install"
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
