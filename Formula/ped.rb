class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.25.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "0b98ade09aa33ac67a01963e681e5677b9d34c4f70556fd03c0bb72cfe04d9dd"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "9f57f03a626960fdd40c5775a1e2f4d4019a5af8e7173a0eaa8b0e68b5c8c9c1"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "aca78c12e7c161406ddcff125822a492c466716abebbeddbac3a844a35505689"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "6a2fcee6b025a57d722c827f8a4d0cde320ddfd42c59ef78ca7efb40bc406f04"
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
