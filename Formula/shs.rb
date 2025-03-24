class Shs < Formula
  desc "A C library for packaging directories into a single file"
  homepage "https://github.com/zhonguoq/libshs"
  url "https://github.com/zhonguoq/libshs/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "d77d6037a3b64f6bd3514158022e8887bde5b71870d49991fdd21984e3a696fb"
  license "MIT"

  depends_on "cmake" => :build  # 如果使用 CMake 构建
  # depends_on "make" => :build  # 如果使用 Makefile 构建

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
