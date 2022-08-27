# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotshaker < Formula
  desc "P2P mesh network using WireGuard"
  homepage "https://dotshake.com/"
  version "0.0.22"
  license "BSD3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.22/dotshaker_0.0.22_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "bcab3edca236dfd9b0bf52fd11974972c3cd34a9d70c9b051d45821a4bfa10c8"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.22/dotshaker_0.0.22_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "becce8645f1b44b6b752602d07b9e8686b531055aa31ea1e7721051a268f651c"

      def install
        bin.install "dotshaker"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.22/dotshaker_0.0.22_linux_armv6.tar.gz", :using => CurlDownloadStrategy
      sha256 "24932985ea07382a6569f22d2edd0dea57218a97165bef77dd7201d16379c867"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.22/dotshaker_0.0.22_linux_amd64.tar.gz", :using => CurlDownloadStrategy
      sha256 "52eb0e3b3558d3c47afca1b3c4eb6dc8c94c675ddeba382aeb2ba8572a7c3bf0"

      def install
        bin.install "dotshaker"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Notch-Technologies/dotshake/releases/download/v0.0.22/dotshaker_0.0.22_linux_arm64.tar.gz", :using => CurlDownloadStrategy
      sha256 "0d0720905a8579aa03fd91c8b2921970d5827ef451d1db35bf92cbd8782657cc"

      def install
        bin.install "dotshaker"
      end
    end
  end

  test do
    system "#{bin}/dotshaker version"
  end
end
