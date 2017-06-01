class Pdf2laser < Formula
  desc "CLI tool printing pdf files to an Epilog laser cutter over the network"
  homepage "https://github.com/zellio/pdf2laser"
  url "https://github.com/zellio/pdf2laser/archive/v0.4.0.tar.gz"
  sha256 "f04524b882dde1ffe26c1f967169217c3c7607a9c7b93a2d2a3a8d50c5719e92"

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
