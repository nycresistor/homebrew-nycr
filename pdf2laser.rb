class Pdf2laser < Formula
  url "https://github.com/zellio/pdf2laser/archive/v0.4.0.tar.gz"
  homepage "https://github.com/zellio/pdf2laser"
  sha256 "f04524b882dde1ffe26c1f967169217c3c7607a9c7b93a2d2a3a8d50c5719e92"

  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "ghostscript"

  def install
    system "aclocal", "-I", "m5", "--install"
    system "autoheader"
    system "glibtoolizei", "--force"
    system "automake", "--add-missing", "--foreign"
    system "autoconf"
    system "./configure"
    system "make"
    system "make", "install"
  end
end
