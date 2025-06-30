class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.25.1"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "50885fab01c5a2b8826a3cb840b91578f15cbcc62a4ce6dc94221b4a0b95b332"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "f0f8ce674c80e127b55570766d14c940f0d2c9b1d8971105b29bfc236fc21f2f"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "1dcc08ff36749f984235d0c4f108ab4390f164e64b2f75d3799807dc4d2418b0"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "713a6d7e97e2e29bfa5215f00d2d24779947ed680c726dded36264d9e132492f"
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
