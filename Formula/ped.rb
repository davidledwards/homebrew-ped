class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.8.0"

  if OS.linux? || OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-x86_64-unix.tar.gz"
      sha256 "750beb719622b7894e04da5299dd9f5473214ffe1fdfe88e11d9c0a9fff7583c"
    elsif Hardware::CPU::arm?
      url "https://github.com/davidledwards/ped/releases/download/v" + version + "/ped-" + version + "-aarch64-unix.tar.gz"
      sha256 "f12db9525beb7d48687c785112bd2a505420b4c3b57de96e4654d1638a23c57d"
    end
  end

  def install
    bin.install "ped"
  end
end
