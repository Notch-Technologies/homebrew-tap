# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshake < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.6"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.6/dotshake_0.0.6_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "fceb1ced95887896fb6d551560d957d19261282d9a10110106754812d5819a04"

      def install
        bin.install "dotshake"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.6/dotshake_0.0.6_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "ec2f30287a6c156664adeeb29a03db306f2540a67b0a37777dd3fa68b6c79b66"

      def install
        bin.install "dotshake"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.6/dotshake_0.0.6_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "5632a31f30c2113498a3152384a2c53fbed204ce8d31b802d7acaf13c6f995b1"

      def install
        bin.install "dotshake"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.6/dotshake_0.0.6_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "a74fdcf698b93f632997eb6b1714bc374a15a8c066ed651c6869b240124e8011"

      def install
        bin.install "dotshake"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.6/dotshake_0.0.6_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "3197db9c9300be8671a69b90929962172e91953b9fac3ecae0026b323c8903bc"

      def install
        bin.install "dotshake"
      end
    end
  end

  test do
    system "#{bin}/dotshake version"
  end
end
