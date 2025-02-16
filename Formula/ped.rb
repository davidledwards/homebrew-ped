class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.21.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "927ca6ffcc832034adad5d12971871074d43ab08e33520939f823948e7092920"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "987071e38da3e8bec9a6d6348ab4ec8948199449484a1db6c9d6f9a7d7b6e613"
    end
  end

  def install
    bin.install "ped"
  end
end
