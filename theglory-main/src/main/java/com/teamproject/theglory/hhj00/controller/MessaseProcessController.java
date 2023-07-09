package com.teamproject.theglory.hhj00.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamproject.theglory.hhj00.util.GenerateCertNumber;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.request.SingleMessageSendingRequest;
import net.nurigo.sdk.message.response.SingleMessageSentResponse;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Controller
public class MessaseProcessController {

	static final String API_KEY = "NCS9MNQRIK25YEMS";
	static final String API_SECRET = "0KTAGTGGF9669GKWO9PEUIZ85YKMSGZP";
	
    final DefaultMessageService messageService;

    public MessaseProcessController() {
        // 諛섎뱶�떆 怨꾩젙 �궡 �벑濡앸맂 �쑀�슚�븳 API �궎, API Secret Key瑜� �엯�젰�빐二쇱뀛�빞 �빀�땲�떎!
        this.messageService = NurigoApp.INSTANCE.initialize(
        		API_KEY, API_SECRET, 
        		"https://api.coolsms.co.kr");
    }
	
    /**
     * �떒�씪 硫붿떆吏� 諛쒖넚 �삁�젣
     */
    @RequestMapping("/sendSms")
    @ResponseBody
    public Map<String, String> sendOne(HttpSession session, String phone) {
        Message message = new Message();
        
        // �씤利앸쾲�샇 6�옄由� �깮�꽦
        GenerateCertNumber ge = new GenerateCertNumber();
        ge.setCertNumLength(6);
        String certNum = ge.excuteGenerate();
        
        // 諛쒖떊踰덊샇 諛� �닔�떊踰덊샇�뒗 諛섎뱶�떆 01012345678 �삎�깭濡� �엯�젰�릺�뼱�빞 �빀�땲�떎.
        message.setFrom("01020429123");
        message.setTo(phone);
        message.setText("[�씤利앸쾲�샇] : " + certNum);

        SingleMessageSentResponse response = messageService.sendOne(new SingleMessageSendingRequest(message));
        
        // 2000 �젙�긽 諛쒖넚�맖, 4000 �닔�떊 �셿猷�
        // 李멸퀬 : https://docs.coolsms.co.kr/api-reference/message-status-codes
        System.out.println(response.getStatusCode());
        System.out.println(response.getStatusMessage());
        
        session.setAttribute("certNum", certNum);
        Map<String, String> result = new HashMap<String, String>();
        
        if(response.getStatusCode().equals("2000")) {
        	result.put("result", "OK");
        	result.put("certNum", certNum);
        } else {
        	result.put("result", "FAILE");
        }
        
        return result;
    }
    
    @RequestMapping("/messageValid")
    @ResponseBody
    public String messageValid(String inputCertNum, HttpSession session) {
    	
    	return "";
    }
	
}
