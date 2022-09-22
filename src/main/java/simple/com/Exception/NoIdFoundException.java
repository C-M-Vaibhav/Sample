package simple.com.Exception;

public class NoIdFoundException extends RuntimeException{
	
	String msg = "Id is not found";
	
	public NoIdFoundException() {
		// TODO Auto-generated constructor stub
	}
	public NoIdFoundException(String msg) {
		this.msg=msg;
	}
	
	@Override
	public String getMessage() {
		return msg;
	}
	

}
