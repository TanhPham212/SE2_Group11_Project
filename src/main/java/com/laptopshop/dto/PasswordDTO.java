package com.laptopshop.dto;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

public class PasswordDTO {

	@NotEmpty(message = "Must be filled")
	private String oldPassword;

	@NotEmpty(message = "Must be filled")
	@Length(min=8, max=32, message="Must be 8-12 characters")
	private String newPassword;

	@NotEmpty(message = "Must be filled")
	private String confirmNewPassword;

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getConfirmNewPassword() {
		return confirmNewPassword;
	}

	public void setConfirmNewPassword(String confirmNewPassword) {
		this.confirmNewPassword = confirmNewPassword;
	}

	@Override
	public String toString() {
		return "PasswordDTO [oldPassword=" + oldPassword + ", newPassword=" + newPassword + ", confirmNewPassword="
				+ confirmNewPassword + "]";
	}
}
