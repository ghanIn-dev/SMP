package gan.study;

public class studyVO {

	private String stdno, // 그룹번호
	stdstartdate,// 시작일자 
	stdenddate,// 종료일자 
	stdtitle,// 그룹 제목 
	stdcategori,// 그룹 카테고리 
	stdmemo,// 그룹 설명
	stdmenu,// 그룹 메뉴	
	stdmemlimit,// 그룹 인원수 제한 
	stdupdatedate,// 그룹 수정일자 
	stdupdateadmin,//그룹 수정자
	stdstatus, // 그룹 공개여부
	deleteflag, // 삭제코드
	menuarr;

	public String getMenuarr() {
		return menuarr;
	}

	public void setMenuarr(String menuarr) {
		this.menuarr = menuarr;
	}

	public String getStdno() {
		return stdno;
	}

	public void setStdno(String stdno) {
		this.stdno = stdno;
	}

	public String getStdstartdate() {
		return stdstartdate;
	}

	public void setStdstartdate(String stdstartdate) {
		this.stdstartdate = stdstartdate;
	}

	public String getStdenddate() {
		return stdenddate;
	}

	public void setStdenddate(String stdenddate) {
		this.stdenddate = stdenddate;
	}

	public String getStdtitle() {
		return stdtitle;
	}

	public void setStdtitle(String stdtitle) {
		this.stdtitle = stdtitle;
	}

	public String getStdcategori() {
		return stdcategori;
	}

	public void setStdcategori(String stdcategori) {
		this.stdcategori = stdcategori;
	}

	public String getStdmemo() {
		return stdmemo;
	}

	public void setStdmemo(String stdmemo) {
		this.stdmemo = stdmemo;
	}

	public String getStdmenu() {
		return stdmenu;
	}

	public void setStdmenu(String stdmenu) {
		this.stdmenu = stdmenu;
	}

	public String getStdmemlimit() {
		return stdmemlimit;
	}

	public void setStdmemlimit(String stdmemlimit) {
		this.stdmemlimit = stdmemlimit;
	}

	public String getStdupdatedate() {
		return stdupdatedate;
	}

	public void setStdupdatedate(String stdupdatedate) {
		this.stdupdatedate = stdupdatedate;
	}

	public String getStdupdateadmin() {
		return stdupdateadmin;
	}

	public void setStdupdateadmin(String stdupdateadmin) {
		this.stdupdateadmin = stdupdateadmin;
	}

	public String getStdstatus() {
		return stdstatus;
	}

	public void setStdstatus(String stdstatus) {
		this.stdstatus = stdstatus;
	}

	public String getDeleteflag() {
		return deleteflag;
	}

	public void setDeleteflag(String deleteflag) {
		this.deleteflag = deleteflag;
	}
}
