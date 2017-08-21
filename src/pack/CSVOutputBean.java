package pack;

public class CSVOutputBean {


	private String userid = "";
    private String currentTime = "";

    private String eventName = "";
    private long waitTime = 0L;

    private boolean scoreFlag = false;

	private String accountTakeoverScore = "";
    private String accountAbuseScore = "";


    public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public long getWaitTime() {
		return waitTime;
	}
	public void setWaitTime(long waitTime) {
		this.waitTime = waitTime;
	}
	public boolean isScoreFlag() {
		return scoreFlag;
	}
	public void setScoreFlag(boolean scoreFlag) {
		this.scoreFlag = scoreFlag;
	}
	public String getAccountTakeoverScore() {
		return accountTakeoverScore;
	}
	public void setAccountTakeoverScore(String accountTakeoverScore) {
		this.accountTakeoverScore = accountTakeoverScore;
	}
	public String getAccountAbuseScore() {
		return accountAbuseScore;
	}
	public void setAccountAbuseScore(String accountAbuseScorecore) {
		this.accountAbuseScore = accountAbuseScorecore;
	}

}
