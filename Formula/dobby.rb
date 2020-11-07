class Dobby < Formula
  desc "Command-line program to track and save your work / study activity"
  homepage "https://github.com/alioguzhan/dobby"
  url "https://github.com/alioguzhan/dobby/releases/download/v0.2/dobby-v0.2.tar.gz"
  sha256 "e91d6075525dfcd6eca0df0f7a037d354844bc4e83a0bd2f093d8e7b761de87a"
  license "MIT"

  depends_on "make" => :build

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "false"
  end
end