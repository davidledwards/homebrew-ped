class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.11.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "c5bb84f4a2a00b9e8146964d253a124280a526d1364681554c05c034957efac6"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "a45e46354b4bb50f1e43c1efbb5a62ed4c241dc839a957fcb56e8e3c7a61e97d"
    end
  end

  def install
    bin.install "ped"
  end
end
