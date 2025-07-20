class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.28.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "71fbfd2eeac5d64d02ddeb8c2701fd3203ec9385c26b50a5560e4dba32ae1251"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "74539ab1efb8f3269603cec72c75f2d46e5de20354ecbabe836a794394665446"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "f76e94656e16184263f655912ed71f6c49be657918451c58b81f3471261a2fe4"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "4e32e14c0d90e55586d9b3c38fbc7a35330aa277af57e972313473df202230df"
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
