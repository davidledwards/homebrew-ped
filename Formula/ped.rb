class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.29.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "9d62c582b3f01be3d9b5b58d17c4cb5e9e2e37e9a31d43afeb62999c22bc9374"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "f91434c7595a71667725b8c9b48646c589051fc03a31b9dd9d664fd585b9462d"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "e52162aabf103007823667a5430355ab854fdd104efb9ebc8f8a353f14c12d13"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "fbf361da1cbf93d9208b336b99ca634b4e16c123107c8c331751b8068295881f"
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
