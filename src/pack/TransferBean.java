package pack;

import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class TransferBean
 */
public class TransferBean extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransferBean() {
        super();
    }

    private String toName = "";
    private String accountNumber = "";
    private String amount = "";


	public String getToName() {
		return toName;
	}
	public void setToName(String toName) {
		this.toName = toName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}

}
