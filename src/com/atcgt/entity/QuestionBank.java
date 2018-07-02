package com.atcgt.entity;

public class QuestionBank {
  private Integer id;
  private String question;
  private String correctAnswer;
  private String answer;
  private Integer score;
  private Integer type;
  private String a;
  private String b;
  private String c;
  private String d;
  
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public String getCorrectAnswer() {
	return correctAnswer;
}
public void setCorrectAnswer(String correctAnswer) {
	this.correctAnswer = correctAnswer;
}
public String getAnswer() {
	return answer;
}
public void setAnswer(String answer) {
	this.answer = answer;
}
public Integer getScore() {
	return score;
}
public void setScore(Integer score) {
	this.score = score;
}
public Integer getType() {
	return type;
}
public void setType(Integer type) {
	this.type = type;
}


public String getA() {
	return a;
}
public void setA(String a) {
	this.a = a;
}
public String getB() {
	return b;
}
public void setB(String b) {
	this.b = b;
}
public String getC() {
	return c;
}
public void setC(String c) {
	this.c = c;
}
public String getD() {
	return d;
}
public void setD(String d) {
	this.d = d;
}
@Override
public String toString() {
	return "QuestionBank [" + question + "," + answer + "]";
}
	
}
