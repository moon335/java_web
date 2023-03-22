package ch02;

// 어노테이션을 쓰면 인터페이스에서 바로 오류가 발생한다.
@FunctionalInterface
public interface IMaxNumber {
	int getMax(int a, int b);
//	int getMax(int a, int b, int c);
}
