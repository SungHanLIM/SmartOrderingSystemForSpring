package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.common.common.CommandMap;
import first.sample.service.SampleService;

@Controller
public class SampleController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="sampleService")
	private SampleService sampleService;
	
	// 임승한 추가
	@RequestMapping(value="/mMain.do")
	public ModelAndView mMain() throws Exception{
		ModelAndView mv = new ModelAndView("/mMain");
		
		return mv;
	}
	
	// 임승한  json
	@RequestMapping(value="/mMenuModal.do")
    public ModelAndView showModal(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView();
    	
    	List<Map<String,Object>> list = sampleService.selectMenu(commandMap.getMap());

    	mv.addObject("list", list);
    	mv.setViewName("jsonView");
    	 
    	return mv;
    }
	
	@RequestMapping(value="/mMenuFinder.do")
    public ModelAndView openMenu(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/mMenuFinder");
    	
    	List<Map<String,Object>> list = sampleService.selectMenu(commandMap.getMap());
    	
    	mv.addObject("list", list);
    	
    	return mv;
    }
	
	@RequestMapping(value="/mBusiness.do")
	public ModelAndView mBusiness() throws Exception{
		ModelAndView mv = new ModelAndView("/mBusiness");
		
		return mv;
	}
	
	@RequestMapping(value="/mGuideWayStart.do")
	public ModelAndView mGuideWayStart() throws Exception{
		ModelAndView mv = new ModelAndView("/mGuideWayStart");
		
		return mv;
	}
	
	@RequestMapping(value="/mProject.do")
	public ModelAndView mProject() throws Exception{
		ModelAndView mv = new ModelAndView("/mProject");
		
		return mv;
	}
	
	@RequestMapping(value="/mGuideWay.do")
	public ModelAndView mGuideWay() throws Exception{
		ModelAndView mv = new ModelAndView("/mGuideWay");
		
		return mv;
	}
	
	@RequestMapping(value="/mGuideWayLocation.do")
	public ModelAndView mGuideWayLocation() throws Exception{
		ModelAndView mv = new ModelAndView("/mGuideWayLocation");
		
		return mv;
	}
	
	@RequestMapping(value="/sample/openBoardList.do")
    public ModelAndView openBoardList(CommandMap commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("/sample/boardList");
    	
    	List<Map<String,Object>> list = sampleService.selectBoardList(commandMap.getMap());
    	mv.addObject("list", list);
    	
    	return mv;
    }
	
	@RequestMapping(value="/sample/openBoardWrite.do")
	public ModelAndView openBoardWrite(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/boardWrite");
		
		return mv;
	}
	
	@RequestMapping(value="/sample/insertBoard.do")
	public ModelAndView insertBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");
		
		sampleService.insertBoard(commandMap.getMap(), request);
		
		return mv;
	}
	
	@RequestMapping(value="/sample/openBoardDetail.do")
	public ModelAndView openBoardDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/boardDetail");
		
		Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		
		return mv;
	}
	
	@RequestMapping(value="/sample/openBoardUpdate.do")
	public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/sample/boardUpdate");
		
		Map<String,Object> map = sampleService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("list", map.get("list"));
		
		return mv;
	}
	
	@RequestMapping(value="/sample/updateBoard.do")
	public ModelAndView updateBoard(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardDetail.do");
		
		sampleService.updateBoard(commandMap.getMap(), request);
		
		mv.addObject("IDX", commandMap.get("IDX"));
		return mv;
	}
	
	@RequestMapping(value="/sample/deleteBoard.do")
	public ModelAndView deleteBoard(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/sample/openBoardList.do");
		
		sampleService.deleteBoard(commandMap.getMap());
		
		return mv;
	}
}
