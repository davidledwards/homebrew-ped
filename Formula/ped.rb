class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.10.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "8213420d58b47d6fa19729aad13fb99b9cb6fae0458e07ec35cbe59ffc955af0"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "1a9f9c89d56b4058ca41ae91c3ce0f14a580ca4c4435a044bf2c32da8e59f653"
    end
  end

  def install
    bin.install "ped"
  end
end
