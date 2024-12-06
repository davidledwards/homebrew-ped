class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.2.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "9654d16cae3c36b45d40dbf4150703dc6da9821128ce83c79aad39834ffcc747"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "a3028de6ae17bf9fdc2ba32869dd012c9652fd5010a567ca7754cffb6b5d8330"
    end
  end

  def install
    bin.install "ped"
  end
end
