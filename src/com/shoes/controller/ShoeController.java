package com.shoes.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shoes.plugin.interceptor.Page;
import com.shoes.pojo.ShoeTypeBrand;
import com.shoes.pojo.Shoes;
import com.shoes.service.IShoesService;

@Controller
public class ShoeController {
	@Autowired
	private IShoesService iShoesService;

	@RequestMapping("showAllShoes.do")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		List<ShoeTypeBrand> list = iShoesService.findAll();

		mv.addObject("list", list);
		mv.setViewName("back/admins/productManagement/ShowShoes.jsp");
		return mv;
	}

	@RequestMapping("showShoes.do")
	public ModelAndView selectShoes(Integer pageNum) {

		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iShoesService.selectPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/productManagement/ShowShoes.jsp");
		return mv;
	}

	@RequestMapping("showSpcifyShoes.do")
	public ModelAndView findPage(Integer pageNum) {

		if (pageNum == null || pageNum <= 0) {
			pageNum = 1;
		}

		Page page = new Page();
		page.setCurPage(pageNum);

		iShoesService.findPage(page);
		ModelAndView mv = new ModelAndView();
		mv.addObject("page", page);
		mv.setViewName("back/admins/productManagement/showSpshoes.jsp");
		return mv;
	}

	@RequestMapping("deleteSpcifyShoes.do")
	public ModelAndView delete(HttpServletRequest request) {
		int spsid = Integer.parseInt(request.getParameter("spsid"));
//		iShoesService.deleteSpShoe(spsid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("showSpcifyShoes.do");
		return mv;
	}

	@RequestMapping("addShoes.do")
	public ModelAndView add(Shoes shoe, HttpServletRequest request) throws Exception {
		File uploadPath;
		File tempPath;
		List list = new ArrayList();
		uploadPath = new File(request.getServletContext().getRealPath("upload"));
		System.out.println("uploadPath=====" + uploadPath);
		// 如果目录不存在
		if (!uploadPath.exists()) {
			// 创建目录
			uploadPath.mkdir();
		}

		// 临时目录
		tempPath = new File(request.getServletContext().getRealPath("temp"));
		if (!tempPath.exists()) {
			tempPath.mkdir();
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();

		factory.setSizeThreshold(4096);

		factory.setRepository(tempPath);

		ServletFileUpload upload = new ServletFileUpload(factory);

		upload.setSizeMax(1000000 * 20);
		try {
			List fileItems = upload.parseRequest(request);
			String itemNo = "";
			for (Iterator iter = fileItems.iterator(); iter.hasNext();) {
				FileItem item = (FileItem) iter.next();

				// 是普通的表单输入域
				if (item.isFormField()) {
					if ("itemNo".equals(item.getFieldName())) {
						itemNo = item.getString();
					}
					list.add(item.getString("UTF-8"));
				}
				// 是否为input="type"输入域
				if (!item.isFormField()) {
					String fileName = item.getName();
					long size = item.getSize();
					if ((fileName == null || fileName.equals("")) && size == 0) {
						continue;
					}
					// 截取字符串 如：C:\WINDOWS\Debug\PASSWD.LOG
					fileName = fileName.substring(fileName.lastIndexOf("\\") + 1, fileName.length());
					item.write(new File(uploadPath, fileName));
					
					shoe.setSimage(fileName);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		
		iShoesService.addShoes(shoe);
		mv.setViewName("showAllShoes.do");
		return mv;
    }
}
