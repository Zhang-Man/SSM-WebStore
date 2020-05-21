package com.mfb.friday;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Connectioncontroller 
{
	@RequestMapping("/ChangeAddress")
	public String ChangeAddress() {
		return "ChangeAddress";
	}
	@RequestMapping("/head")
	public String head() {
		return "head";
	}
	@RequestMapping("/checkout_payment")
	public String checkout_payment() {
		return "checkout_payment";
	}
	@RequestMapping("/pay_success")
	public String pay_success() {
		return "pay_success";
	}
	@RequestMapping("/shipping_list")
	public String shipping_list() {
		return "shipping_list";
	}
	@RequestMapping("/MyCenter-Information")
	public String MyCenterInformation() {
		return "MyCenter-Information";
	}
	@RequestMapping("/createadd")
	public String createadd() {
		return "createadd";
	}
	@RequestMapping("/MyCenter-Order")
	public String MyCenterOrder() {
		return "MyCenter-Order";
	}
	@RequestMapping("/ChangeInfo")
	public String ChangeInfo() {
		return "ChangeInfo";
	}
	@RequestMapping("/signin")
	public String testsignin() {
		return "signin";
	}
	@RequestMapping("/signup")
	public String testsignup() {
		return "signup";
	}
	@RequestMapping("/wishlist")
	public String wishlist() {
		return "wishlist";
	}
	@RequestMapping("/terms_conditions")
	public String terms_conditions() {
		return "terms_conditions";
	}
	@RequestMapping("/MyCenter")
	public String MyCenter() {
		return "MyCenter";
	}
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	@RequestMapping("/ChangePassword")
	public String ChangePassword() {
		return "ChangePassword";
	}
	@RequestMapping("/faq")
	public String faq() {
		return "faq";
	}
	@RequestMapping("/deals_list")
	public String deals_list() {
		return "deals_list";
	}
	@RequestMapping("/deals_grid")
	public String deals_grid() {
		return "deals_grid";
	}
	@RequestMapping("/deals_grid_sidebar")
	public String deals_grid_sidebar() {
		return "deals_grid_sidebar";
	}
	@RequestMapping("/deal_single")
	public String deal_single() {
		return "deal_single";
	}
	@RequestMapping("/coupons_list")
	public String coupons_list() {
		return "coupons_list";
	}
	@RequestMapping("/coupons_grid")
	public String coupons_grid() {
		return "coupons_grid";
	}
	@RequestMapping("/coupons_grid_sidebar")
	public String coupons_grid_sidebar() {
		return "coupons_grid_sidebar";
	}
	@RequestMapping("/contact_us_02")
	public String contact_us_02() {
		return "contact_us_02";
	}
	@RequestMapping("/contact_us_01")
	public String contact_us_01() {
		return "contact_us_01";
	}
	@RequestMapping("/checkout_method")
	public String checkout_method() {
		return "checkout_method";
	}
	@RequestMapping("/checkout_billing")
	public String checkout_billing() {
		return "checkout_billing";
	}
	@RequestMapping("/cart")
	public String cart() {
		return "cart";
	}
	@RequestMapping("/blog_single_youtube")
	public String blog_single_youtube() {
		return "blog_single_youtube";
	}
	@RequestMapping("/blog_single_vimeo")
	public String blog_single_vimeo() {
		return "blog_single_vimeo";
	}
	@RequestMapping("/blog_single_standard")
	public String blog_single_standard() {
		return "blog_single_standard";
	}
	@RequestMapping("/blog_single_quote")
	public String blog_single_quote() {
		return "blog_single_quote";
	}
	@RequestMapping("/blog_single_map")
	public String blog_single_map() {
		return "blog_single_map";
	}
	@RequestMapping("/blog_single_gallery")
	public String blog_single_gallery() {
		return "blog_single_gallery";
	}
	@RequestMapping("/blog_single_audio")
	public String blog_single_audio() {
		return "blog_single_audio";
	}
	@RequestMapping("/blog_list_right_sidebar")
	public String blog_list_right_sidebar() {
		return "blog_list_right_sidebar";
	}
	@RequestMapping("/blog_list_left_sidebar")
	public String blog_list_left_sidebar() {
		return "blog_list_left_sidebar";
	}
	@RequestMapping("/blog_list_fullwidth")
	public String blog_list_fullwidth() {
		return "blog_list_fullwidth";
	}
	@RequestMapping("/blog_grid_right_sidebar")
	public String blog_grid_right_sidebar() {
		return "blog_grid_right_sidebar";
	}
	@RequestMapping("/blog_grid_3col")
	public String blog_grid_3col() {
		return "blog_grid_3col";
	}
	@RequestMapping("/blog_grid_2col")
	public String blog_grid_2col() {
		return "blog_grid_2col";
	}
	@RequestMapping("/blog_classic_right_sidebar")
	public String blog_classic_right_sidebar() {
		return "blog_classic_right_sidebar";
	}
	@RequestMapping("/blog_classic_left_sidebar")
	public String blog_classic_left_sidebar() {
		return "blog_classic_left_sidebar";
	}
	@RequestMapping("/blog_classic_fullwidth")
	public String blog_classic_fullwidth() {
		return "blog_classic_fullwidth";
	}
	@RequestMapping("/404")
	public String error404() {
		return "404";
	}
	@RequestMapping("/ForgetPassword")
	public String ForgetPassword() {
		return "ForgetPassword";
	}
	@RequestMapping("/Category")
	public String Category() {
		return "Category";
	}
	@RequestMapping("/MyCenter_Address")
	public String MyCenter_Address() {
		return "MyCenter_Address";
	}
}
