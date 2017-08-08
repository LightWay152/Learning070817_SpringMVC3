package nhatnghe.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import nhatnghe.bean.Clazz;
import nhatnghe.bean.Student;

@Controller
@RequestMapping("student")
public class StudentController {
	
	@RequestMapping("index")
	public String index(ModelMap model){
		Student stu = new Student();
		stu.setId("TeoVN");
		stu.setFullname("Nguyen Van Teo");
		stu.setClazz("PT003");
		stu.setGender(false);
		stu.setMarks(7.0);
		model.addAttribute("stu", stu);
		
		return "student";
	}
	
	@ModelAttribute("clazzs")
	public List<Clazz> getClazzs(){
		List<Clazz> list = new ArrayList<Clazz>();
		list.add(new Clazz("PT001","Ứng dụng phần mềm"));
		list.add(new Clazz("PT002","Thiết kế trang web"));
		list.add(new Clazz("PT003","Lập trình di động"));
		list.add(new Clazz("PT004","Thiết kế đồ họa"));
		return list;
	}
}
