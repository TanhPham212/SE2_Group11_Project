package com.laptopshop.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.laptopshop.dto.SanPhamDto;
import com.laptopshop.service.DanhMucService;

@Component
public class SanPhamDtoValidator implements Validator{
	
	@Autowired
	private DanhMucService dmService;

	@Override
	public boolean supports(Class<?> clazz) {
		return SanPhamDto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		SanPhamDto s = (SanPhamDto) target;
		
		ValidationUtils.rejectIfEmpty(errors, "tenSanPham", "error.tenSanPham", "Cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "donGia", "error.donGia", "Cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "donViKho", "error.donViKho", "Cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "thongTinBaoHanh", "error.thongTinBaoHanh", "Cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "thongTinChung", "error.thongTinChung", "Cannot be blank");
		
		if(Integer.parseInt(s.getDonGia()) < 0) {
			errors.rejectValue("donGia", "error.donGia", "Cannot be negative");
		}
		
		if(Integer.parseInt(s.getDonViKho()) < 0) {
			errors.rejectValue("donViKho", "error.donViKho", "Cannot be negative");
		}
		String tenDanhMuc = dmService.getDanhMucById(s.getDanhMucId()).getTenDanhMuc().toLowerCase();
		
		if(tenDanhMuc.contains("Laptop".toLowerCase())) {
			ValidationUtils.rejectIfEmpty(errors, "manHinh", "error.manHinh", "Cannot be blank");
			ValidationUtils.rejectIfEmpty(errors, "heDieuHanh", "error.heDieuHanh", "Cannot be blank");
			ValidationUtils.rejectIfEmpty(errors, "cpu", "error.cpu", "Cannot be blank");
			ValidationUtils.rejectIfEmpty(errors, "ram", "error.ram", "Cannot be blank");
			ValidationUtils.rejectIfEmpty(errors, "thietKe", "error.thietKe", "Cannot be blank");
			ValidationUtils.rejectIfEmpty(errors, "dungLuongPin", "error.dungLuongPin", "Cannot be blank");			
		}
		
	}

}
