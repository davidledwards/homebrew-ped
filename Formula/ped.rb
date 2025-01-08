class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.12.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "204db5d0beefc5994f57c78cb80f31f1a35a612691b84d754fbd1359f21ae4f6"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "68d8b3529b29418266867a0ef3f8c8170677945e23c360ce1b1bd80fe8aac037"
    end
  end

  def install
    bin.install "ped"
  end
end
