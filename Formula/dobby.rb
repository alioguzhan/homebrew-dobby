class Dobby < Formula
  desc "Command-line program to track and save your work / study activity"
  homepage "https://github.com/alioguzhan/dobby"
  url "https://github.com/alioguzhan/dobby/archive/v0.1.tar.gz"
  sha256 "1230602582b5dd42a674c9763169e6ca620800584ed3724ad6f9a80458b4d160"
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