class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.28.1"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "6ea88170a6b6defe7b68b0f60487851606c17eb9723248719f501005cec5d6de"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "e469e2a66fc85de7570c146f55ee8374d7eedfc9b353fa894da6601806a26644"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "58922d4009ad2904d4d9b24db651af1f569d9e1ed91e3c48fa7aeaec0892fb6a"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "45ef8569a3c7ebfb86fd63365526728efd92b15b53d40261485e5f7a6d2bda18"
      end
    end
  end

  def install
    bin.install "ped"
  end

  test do
    system "#{bin}/ped", "--version"
  end
end
