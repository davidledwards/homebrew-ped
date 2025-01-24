class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.14.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "cf8a2dd20448bc3251056476835479c8ea34141d9e26d1826813a786c9a6e335"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "f880dcedbf41f82f644847e33206e938857da92fc8da6b6e1a24f7f29d0b9be9"
    end
  end

  def install
    bin.install "ped"
  end
end
