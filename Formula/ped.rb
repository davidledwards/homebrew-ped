class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.4.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "a38b1171fddeb9f525b5b11dd9c2916cc7b6bfdfd0b47e5905d315d02854d17a"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "868efa8ab6bfb8a44c524b89cd1fb03238633ba5c8d1eb9cdf66613e5a10b7a1"
    end
  end

  def install
    bin.install "ped"
  end
end
