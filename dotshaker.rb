# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.27"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.27/dotshaker_0.0.27_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "b52993ba666c1dd520e5b6d878ffa4dbb94dc45a61b08e7714d87b81551dcc0c"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.27/dotshaker_0.0.27_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "48807aca999d1d2e6b1aeb254d893624b2979e8039f29e92621f0dbd7f3f1c72"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.27/dotshaker_0.0.27_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "42a83e3bf134eca7ef8e425279b81d08653005b8fd811a4d58384790b59b63b3"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.27/dotshaker_0.0.27_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "622bac7ba0f27f11018c19bbdcaa8fff4f038152c16f344c80f109002ef63865"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.27/dotshaker_0.0.27_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "c3952905cb64f2d26f6e1b6cf51eaf2cd604f0b2871977e55ad06edef363fc85"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
