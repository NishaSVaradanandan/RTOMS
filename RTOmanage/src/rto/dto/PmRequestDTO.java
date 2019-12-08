package rto.dto;

public class PmRequestDTO {
	String application_no,Temp_no,cus_name,chassis_no,tp_allot_date,expiry_date,permanent_no,pm_alloted_date;
	int count,status,pm_alloted_month;
	
	public int getPm_alloted_month() {
		return pm_alloted_month;
	}

	public void setPm_alloted_month(int pm_alloted_month) {
		this.pm_alloted_month = pm_alloted_month;
	}

	public String getPm_alloted_date() {
		return pm_alloted_date;
	}

	public void setPm_alloted_date(String pm_alloted_date) {
		this.pm_alloted_date = pm_alloted_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getExpiry_date() {
		return expiry_date;
	}

	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}

	public String getPermanent_no() {
		return permanent_no;
	}

	public void setPermanent_no(String permanent_no) {
		this.permanent_no = permanent_no;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getApplication_no() {
		return application_no;
	}

	public void setApplication_no(String application_no) {
		this.application_no = application_no;
	}

	public String getTemp_no() {
		return Temp_no;
	}

	public void setTemp_no(String temp_no) {
		Temp_no = temp_no;
	}

	public String getCus_name() {
		return cus_name;
	}

	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}

	public String getChassis_no() {
		return chassis_no;
	}

	public void setChassis_no(String chassis_no) {
		this.chassis_no = chassis_no;
	}

	public String getTp_allot_date() {
		return tp_allot_date;
	}

	public void setTp_allot_date(String tp_allot_date) {
		this.tp_allot_date = tp_allot_date;
	}
	

}
