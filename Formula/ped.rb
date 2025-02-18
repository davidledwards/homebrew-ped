class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.21.1"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "1106ba6e8c11f2c12bccc2699f48e07d3b6fbf282dcc70932cf6b328964b2571"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "a89ba08135d996f862473bdb52c701ba7c9a84242279119058b7df7d8dec383c"
    end
  end

  on_linux do
    on_intel do
      url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "623a73b94f5b2a6a306653eae730820abe730d37b30b14e1b7e2b6246b26f57e"
    end
  end

  def install
    bin.install "ped"
  end
end
