# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshake < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.17"
  license "BSD3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.17/dotshake_0.0.17_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "19d77a79ce76254dec63fe4e70f69dc5acdfdf7c1267e74de8a57a07e5f2fad3"

      def install
        bin.install "dotshake"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.17/dotshake_0.0.17_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "1a02ff577b17784e5771bd4d75e58e0319ded78f13633497d52a0e95e87a497f"

      def install
        bin.install "dotshake"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.17/dotshake_0.0.17_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "aef260672a306ad3f79c56aa2cfb372f50da00fdcd7b27877ddbef2a459fa190"

      def install
        bin.install "dotshake"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.17/dotshake_0.0.17_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "95646f4c2f198c5e98feac8ff27ab5775ea4b7687ce9ce0389342497ed492f2e"

      def install
        bin.install "dotshake"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.17/dotshake_0.0.17_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "61ee7f66e23b9e4a5e19bd7bbd1a04185af82d9c2e7f2d2f35dd5d7381cacacf"

      def install
        bin.install "dotshake"
      end
    end
  end

  test do
    system "#{bin}/dotshake version"
  end
end
