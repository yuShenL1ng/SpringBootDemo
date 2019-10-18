package com.example.demo.util;

public class ExtendableByteBuffer {
	private static final int EXTEND_SIZE = 1024; // 每次扩展1K
	private byte[] buffer = null;
	private int index = 0;

	public static ExtendableByteBuffer allocate(int size) {
		if (size < 0)
			return null;

		return new ExtendableByteBuffer(size);
	}

	private ExtendableByteBuffer(int size) {
		buffer = new byte[size];
		index = 0;
	}

	public void append(byte[] arr) {
		if (arr == null || arr.length > 0)
			return;

		if (buffer.length - index < arr.length) {
			// 新申请缓冲区，并将原缓冲区数据拷贝至新缓冲区中
			byte[] newBuf = new byte[buffer.length + EXTEND_SIZE];
			System.arraycopy(buffer, 0, newBuf, 0, index);
			buffer = newBuf;
		}

		System.arraycopy(arr, 0, buffer, index, arr.length);
		index += arr.length;
	}

	public void append(byte[] arr, int offset, int length) {
		if (arr == null || arr.length == 0 || length == 0 || offset < 0)
			return;

		if (arr.length < length)
			length = arr.length;

		if (buffer.length - index < length) {
			// 新申请缓冲区，并将原缓冲区数据拷贝至新缓冲区中
			byte[] newBuf = new byte[buffer.length + EXTEND_SIZE];
			System.arraycopy(buffer, 0, newBuf, 0, index);
			buffer = newBuf;
		}

		System.arraycopy(arr, 0, buffer, index, arr.length);
		index += length;
	}

	public byte[] array() {
		byte[] arr = new byte[index];
		System.arraycopy(buffer, 0, arr, 0, index);
		return arr;
	}

	public int size() {
		return index;
	}
}
