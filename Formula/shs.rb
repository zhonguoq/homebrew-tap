class Shs < Formula
  desc "A C library for packaging directories into a single file"
  homepage "https://github.com/zhonguoq/libshs"
  url "https://github.com/zhonguoq/libshs/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "23d437e9fd1895c95bf0b483a9186398cfa38017d22b9baafb6066e5dc96c029"
  license "MIT"

  depends_on "cmake" => :build  # 如果使用 CMake 构建
  # depends_on "make" => :build  # 如果使用 Makefile 构建

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
