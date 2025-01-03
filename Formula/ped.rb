class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.9.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "cc8877856a85c0dfe8c68054c02bfd7da66b081403bcdd8d276bce59c16c41b8"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "4dddd017c3d91eafd0bb76a378966e472eee5d05e74bdf803f5290eb20318beb"
    end
  end

  def install
    bin.install "ped"
  end
end
