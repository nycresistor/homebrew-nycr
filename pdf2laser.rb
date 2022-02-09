class Pdf2laser < Formula
  desc "CLI tool printing pdf files to an Epilog laser cutter over the network"
  homepage "https://github.com/zellio/pdf2laser"
  url "https://github.com/zellio/pdf2laser/archive/v1.0.0.tar.gz"
  sha256 "01028395ccc8a12f95805c9d107e3f606a3a7d4bcbc69399563d1e1d47099af0"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "bison" => :build
  depends_on "flex" => :build
  depends_on "libtool" => :build
  depends_on "ghostscript"

  def install
    ENV["PATH"] += ":/usr/local/bin:/opt/homebrew/bin"
    inreplace "configure.ac" do |conf|
      conf.gsub!(/AC_PROG_LEX.*/, "AC_PROG_LEX")
    end
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
