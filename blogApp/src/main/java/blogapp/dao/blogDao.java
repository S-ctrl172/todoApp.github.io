package blogapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import blogapp.model.blog;

@Component
public class blogDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create
	@Transactional
	public void createBlog(blog blog) {

		
		
		this.hibernateTemplate.saveOrUpdate(blog);

	}

	// get all products
	public List<blog> getBlogs() {
		List<blog> blogs = this.hibernateTemplate.loadAll(blog.class);
		return blogs;
	}

	// delete the single product
	@Transactional
	public void deleteBlog(int pid) {
		blog p = this.hibernateTemplate.load(blog.class, pid);
		this.hibernateTemplate.delete(p);
	}

	// get the single product
	public blog getBlog(int pid) {
		return this.hibernateTemplate.get(blog.class, pid);
	}
}