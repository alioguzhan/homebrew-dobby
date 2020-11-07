class Dobby < Formula
  desc "Command-line program to track and save your work / study activity"
  homepage "https://github.com/alioguzhan/dobby"
  url "https://github.com/alioguzhan/dobby/releases/download/v0.1/dobby-0.1.tar.gz"
  sha256 "8625ed0758b238d6c7cea26cf57cc0d8bb08006a30c64488e8ab307853ee65e8"
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