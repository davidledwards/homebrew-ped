class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.6.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "3655a9827aacc83b0b121666288d1a3507266ab630bc63c536742a45c166bd39"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "7deacc72c5a94bcd406473b2104f70f9f02f34da57f51a7b4ebe1669ed5404f7"
    end
  end

  def install
    bin.install "ped"
  end
end
