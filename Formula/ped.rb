class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.23.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "fa0bdc3eeb72b836ba32c1d3aeffe7bf8c586b3b7d8be01f90f4c8eb9e37d76a"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "28fe58477f462b6e60646e0dadbe4717107dbca4c92ce693281de92f552ae9a8"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "ad191c7629395dc2a1d320eb78c795389bac1fb32acb20d60f6df10c75e33b57"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "4e69d73cb750930f83002718b490f2b2cffcf4b19729a177630da3da007d8f64"
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
