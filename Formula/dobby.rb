class Dobby < Formula
  desc "A Command-line tool to track your time and activities."
  homepage "https://github.com/alioguzhan/dobby"
  url "https://github.com/alioguzhan/dobby/archive/v0.1.zip"
  version "v0.1"
  sha256 "bd9badb66201b51e3ca8834088e5b03c77fec8c9"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "mmake"
    system "make", "install"
  end

  test do
    system "make", "test"
  end
end

