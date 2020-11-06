package com.dyung.kim;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dyung.kim.service.ItemService;
import com.dyung.kim.util.FileService;
import com.dyung.kim.vo.FileVO;
import com.dyung.kim.vo.ItemVO;

@Controller
@RequestMapping(value="/board")
public class BoardController {

	@Autowired
	private ItemService service;
	
	@Autowired
	private com.dyung.kim.service.FileService service2;
	private String uploadPath="C:\\Users\\kwk80\\Documents\\workspace-spring-tool-suite-4-4.7.0.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\MarketProject\\resources\\boardfile";
	
	@Autowired
	private HttpSession session;
	@RequestMapping(value="/boardAllList", method=RequestMethod.GET)
	public String boardList(Model model) {
		ArrayList<HashMap<Object, Object>> list = service.selectItemAll();
		
		for(int i=0; i<list.size(); i++) {
			String add = (String)list.get(i).get("ACC_ADD2");
			
			String[] add1 = add.split(" ");
			
			String add_1 = add1[0];
			String add_2 = add1[1];
			String re_add = add_1+" "+add_2;
			
	
			list.get(i).put("re_add", re_add);
		}
		
		
		
		model.addAttribute("list", list);
		return "board/boardList";
	}
	
	@RequestMapping(value="/boardWriteForm", method=RequestMethod.GET)
	public String boardWriteForm() {
		return "board/boardWriteForm";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String boardWrite(ItemVO item, 
							@RequestParam("upload") MultipartFile[] upload,
							Model model) {
		ArrayList<FileVO> fileList = new ArrayList<FileVO>();
		String acc_id = (String)session.getAttribute("loginID");
		String acc_name = (String)session.getAttribute("loginNick");
		item.setAcc_id(acc_id);
		item.setAcc_name(acc_name);
		System.out.println(item.toString());
		String page = service.itemInsert(item);
		int item_num = item.getItem_num();
		//upload->파일이 있다면
			//파일 저장
		for(int i=0; i<upload.length; i++) {
			if(!upload[i].isEmpty()) {
			FileVO file = new FileVO();
			String savedfile = FileService.saveFile(upload[i], uploadPath);
			file.setSavedfile(savedfile);
			file.setOriginalfile(upload[i].getOriginalFilename());
			file.setAcc_id(acc_id);
			file.setItem_num(item_num);
			file.setFile_index(i+1);
			fileList.add(file);
			int cnt = service2.fileInsert(fileList.get(i));
			}
		}

		return "redirect:/board/boardAllList";
	}
}
