class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.18.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "9c5cd0fff55c790a9dfe33a42f1987fb37672e38eb951785634ab2ae1adc0c64"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "e816b7b9c99e74819dad44db05078131a8c1d54743e9b00e6e7511c714ccbfb9"
    end
  end

  def install
    bin.install "ped"
  end
end
