class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.13.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "a68d373b6ebbe1931c36c3ec48057d907f55b3e36a0cf1a83f89a5ba28aefaad"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "6d775ee736fdb9ab5a7907604940b51de6c4f6d7f7db897b66658ef1b31dc1b0"
    end
  end

  def install
    bin.install "ped"
  end
end
