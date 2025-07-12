class Ped < Formula
  desc "The pedestrian text editor"
  homepage "https://github.com/davidledwards/ped"
  version "0.27.0"
  url_prefix = "https://github.com/davidledwards/ped/releases/download/v#{version}/ped-#{version}"

  on_macos do
    on_intel do
      url "#{url_prefix}-x86_64-apple-darwin.tar.gz"
      sha256 "8d599cf717f4015060a3e53e459a922e4bc4f05c4ed30d969c2a5afb5e44a465"
    end

    on_arm do
      url "#{url_prefix}-aarch64-apple-darwin.tar.gz"
      sha256 "3afd7978c4ee3c46c2c2dddc7d0c2445cbaf036550cd041aea6386aa8f7e4309"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "#{url_prefix}-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "3adfac67deff731cdea1e7031d94877f6b6eef56f4d2e3e0c26eb5a90170150f"
      else
        url "#{url_prefix}-i686-unknown-linux-gnu.tar.gz"
        sha256 "aefd9573f3180df808828badd26886f29f4d06d5e7987a44e3865d035a2aec33"
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
