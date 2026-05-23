package com.MainApp.Controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String openLoginPage() {
        return "login"; // login.jsp
    }

    @PostMapping("/doLogin")
    public String doLogin(
            @RequestParam String username,
            @RequestParam String password,
            HttpSession session,
            Model model) {

        // Dummy login credentials
        if(username.equals("Akash") && password.equals("4002")) {
            session.setAttribute("user", username);
            return "redirect:/"; // Home page (Add Car)
        } else {
            model.addAttribute("error", "Invalid Username or Password");
            return "login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
