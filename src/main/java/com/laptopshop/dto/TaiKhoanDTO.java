package com.laptopshop.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

public class TaiKhoanDTO {
	
	private String id;
	
	@NotEmpty(message="Must be filled")
	@Email(message= "Email must be correct")
	private String email;

	@Length(min=8, max=32, message="Must be 8-12 characters")
	private String password;
	
	private String confirmPassword;
	
	@NotEmpty(message="Cannot be blank")
	private String diaChi;
	
	@NotEmpty(message="Cannot be blank")
	private String hoTen;
	
	@NotEmpty(message="Cannot be blank")
	private String sdt;
	private String tenVaiTro;


	public String getTenVaiTro() {
		return tenVaiTro;
	}

	public void setTenVaiTro(String tenVaiTro) {
		this.tenVaiTro = tenVaiTro;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}


}
