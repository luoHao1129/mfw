package com.mfw.order.mail;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.mfw.order.util.MyJavaMailSenderImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;



import freemarker.core.ParseException;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNotFoundException;

/**
 *
 * @author
 */
@Component
public class MailComponent {
	private static final String template = "mail/mail.ftl";

	@Autowired
	private FreeMarkerConfigurer freeMarkerConfigurer;
	@Autowired
	private MyJavaMailSenderImpl javaMailSender;

	public void sendMail(String email,Map<String, Object> map) {
		map.put("email", email);
		try {
			String text = getTextByTemplate(template, map);
			send(email, text);
		} catch (IOException | TemplateException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	private String getTextByTemplate(String template, Map<String, Object> model) throws TemplateNotFoundException, MalformedTemplateNameException, ParseException, IOException, TemplateException {
		return FreeMarkerTemplateUtils.processTemplateIntoString(freeMarkerConfigurer.getConfiguration().getTemplate(template), model);
	}

	private String send(String email, String text) throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = javaMailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
		InternetAddress from = new InternetAddress();
		from.setAddress(javaMailSender.getUsername());
		from.setPersonal("智谷马蜂", "UTF-8");
		helper.setFrom(from);
		helper.setTo(email);
		helper.setSubject("预定成功！");
		helper.setText(text, true);
		javaMailSender.send(message);
		return text;
	}

}
