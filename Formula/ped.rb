class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.7.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "c7bdfbfabf94e5f47333ff94a6d49e99c86cc167d8ea3a448d2e356679637bf3"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "3bd6805d4497196840b065642c7321b7ffdf45194c7c59a575c34efa404e61ec"
    end
  end

  def install
    bin.install "ped"
  end
end
