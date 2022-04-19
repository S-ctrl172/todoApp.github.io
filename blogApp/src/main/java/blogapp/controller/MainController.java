package blogapp.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import blogapp.dao.blogDao;
import blogapp.model.blog;


@Controller
public class MainController {
			
			@Autowired
			private blogDao blogDao;
	
	
	

		@RequestMapping("/")
		public String home(Model m)
		{
			List<blog> blogs = blogDao.getBlogs();
			m.addAttribute("blogs",blogs);
			return "index";
		}
		
		
		//show add product
		@RequestMapping("/add-blog")
		public String addBlog(Model m)
		{
			m.addAttribute("title","Add Product");
			return "add_blog_form";
		}
		
		@RequestMapping("/blog-posts")
		public String getPost(Model m)
		{
			List<blog> blogs = blogDao.getBlogs();
			m.addAttribute("blogs",blogs);
			return "blogposts";
		}
		
		
		//Handle add product form
		@RequestMapping(value = "/handle-blog", method = RequestMethod.POST)
		public RedirectView handleProduct(@ModelAttribute blog blog, HttpServletRequest request){
			System.out.println(blog);
			 blogDao.createBlog(blog);
			 RedirectView redirectView = new RedirectView();
			 redirectView.setUrl(request.getContextPath() + "/");
			 return redirectView;
		}
		
		
		//delete handeler
		@RequestMapping("/delete/{blogId}")
		public RedirectView deleteProduct(@PathVariable("blogId") int blogId,HttpServletRequest request)
		{
			this .blogDao.deleteBlog(blogId);
			RedirectView redirectView = new RedirectView();
			 redirectView.setUrl(request.getContextPath() + "/");
			 return redirectView;
		}
		
		@RequestMapping("/update/{blogId}")
		public String updatForm(@PathVariable("blogId") int pid,Model model)
		{
			blog blog = this.blogDao.getBlog(pid);
			model.addAttribute("blog",blog);
			return "update_form";
		}
}