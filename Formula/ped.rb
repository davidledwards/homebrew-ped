class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.36.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "207603a33dc62b28c02b5f9273c18d540a8e30986e441e9fa083dab1043c3126" # aarch64-apple-darwin
    end
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "dc2efef3401ed57df1f83cef573edea6462c23df789aa233b16dab0c5a9e8b9a" # x86_64-apple-darwin
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "92ae86fb89bb3b16e963f333c227ffd582ad94218c9081d425d0d0a99860c601" # x86_64-unknown-linux-gnu
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "f0e7ef1932fdbe0261d0c28779ebcc03c7d17227b2af31d881e7ab89c16828d4" # i686-unknown-linux-gnu
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
