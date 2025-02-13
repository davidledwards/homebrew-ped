class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.19.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "678e73d6ccff34e95d40f4002210b54b5a26f795f36a6e5bb3c36365c865320b"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "b6e63c160c49e826b4e6611996fc373eb2e607a46eb055c2a4d8af78f6cdb06e"
    end
  end

  def install
    bin.install "ped"
  end
end
