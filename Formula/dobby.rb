class Dobby < Formula
  desc "Command-line program to track and save your work / study activity"
  homepage "https://github.com/alioguzhan/dobby"
  url "https://github.com/alioguzhan/dobby/archive/v0.1.tar.gz"
  sha256 "9282c7a9daa1863ac17bba5413d35730ca10bb1e3d396ffa1802247f189db7f1"
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