class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.11.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "2832ff14d4b3192548782dc6e35c275bffe108432c85562ba14abfd648019551"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "5c7f02e4b9d205ff483b9555bdb493b1d6bfd9e9795d9a91041d7da2a20abc89"
    end
  end

  def install
    bin.install "ped"
  end
end
