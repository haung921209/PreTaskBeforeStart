package kr.co.controller;

import javax.inject.Inject;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;





@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	BoardService service;
	
	// 게시판 글 작성 화면
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public void writeView() throws Exception{
		logger.info("writeView");
		
	}
	
	// 게시판 글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception{
		logger.info("write");
		
		String regexForEmail = "^[_a-zA-Z0-9-\\.]+@[\\.a-zA-Z0-9-]+\\.[a-zA-Z]+$";
		boolean emailValid=boardVO.getWriter().matches(regexForEmail);
		if(emailValid) {
			service.write(boardVO);
			return "redirect:/board/list";
		}
		else {
			
			return "board/writeView";
		}
	}

	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list());
		
		
		return "board/list";
		
	}
	
	// 게시판 조회
	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String read(BoardVO boardVO, Model model) throws Exception{
		logger.info("read");
			
		model.addAttribute("read", service.read(boardVO.getBno()));
			
		return "board/readView";
	}
	// 게시판 수정뷰
		@RequestMapping(value = "/updateView", method = RequestMethod.GET)
		public String updateView(BoardVO boardVO, Model model) throws Exception{
			logger.info("updateView");
			
			model.addAttribute("update", service.read(boardVO.getBno()));
			
			return "board/updateView";
		}
		
		// 게시판 수정
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String update(BoardVO boardVO) throws Exception{
			logger.info("update");
			
			service.update(boardVO);
			
			return "redirect:/board/list";
		}
		
		@RequestMapping(value="/deleteView", method = RequestMethod.GET)
		public String deleteView(BoardVO boardVO,Model model) throws Exception{
			logger.info("deleteView");
			
			model.addAttribute("read", service.read(boardVO.getBno()));
			return "board/deleteView";
		}

		// 게시판 삭제
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		public String delete(BoardVO boardVO) throws Exception{
			logger.info("delete");
			
			service.delete(boardVO.getBno());
			
			return "redirect:/board/list";
		}
	
}