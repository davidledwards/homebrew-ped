class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.3.1"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "cbb46686b973474fe01271fea96e9e079f5a05a21125b5d3593a4ce8c741901a"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "a962d07c0f7420e97b8e5c725b4936ddecd6e7a74d5fe47e8352d4c9585b34ca"
    end
  end

  def install
    bin.install "ped"
  end
end
