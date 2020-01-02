package com.mfw.api.dto;

import java.util.Date;

public class LogDto {
private Date oprTimeDate;
private String operator;
private String moudle;
private String operation;
private String result;
public Date getOprTimeDate() {
	return oprTimeDate;
}
public void setOprTimeDate(Date oprTimeDate) {
	this.oprTimeDate = oprTimeDate;
}
public String getOperator() {
	return operator;
}
public void setOperator(String operator) {
	this.operator = operator;
}
public String getMoudle() {
	return moudle;
}
public void setMoudle(String moudle) {
	this.moudle = moudle;
}
public String getOperation() {
	return operation;
}
public void setOperation(String operation) {
	this.operation = operation;
}
public String getResult() {
	return result;
}
public void setResult(String result) {
	this.result = result;
}
@Override
public String toString() {
	return "LogDto [oprTimeDate=" + oprTimeDate + ", operator=" + operator + ", moudle=" + moudle + ", operation="
			+ operation + ", result=" + result + "]";
}


}
