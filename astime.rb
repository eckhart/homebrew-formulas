require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Astime < Formula
  homepage "http://tigr.net/afterstep/applets/"
  url "http://tigr.net/afterstep/download/astime/astime-2.8.tar.gz"
  sha1 "c32fa36127547da81b1c214a30ba6a36c0ff501b"

  depends_on :x11 # if your formula requires any X11/XQuartz components
  depends_on "libjpeg"

  def install
    system "./configure"
    system "make"
    system "make install.bin"
  end

  test do
    system "#{bin}/astime --help"
  end
end
