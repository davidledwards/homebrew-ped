class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.15.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "dc6f2487ae33ff5c37c2fb76a6ef4d64b22a5dc5818cda7ff0e3cae676bdf788"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "65596b33d0eea5fc0bca1f43ab2ea4290e06545f827d031ea41cdd78ff08f191"
    end
  end

  def install
    bin.install "ped"
  end
end
