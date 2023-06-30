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

	static final String API_KEY = "NCSHTNUWH8EPDDNF";
	static final String API_SECRET = "KYC5EF81GEVDVRGRIR3NVEYHWA5TWRGG";
	
    final DefaultMessageService messageService;

    public MessaseProcessController() {
        // 반드시 계정 내 등록된 유효한 API 키, API Secret Key를 입력해주셔야 합니다!
        this.messageService = NurigoApp.INSTANCE.initialize(
        		API_KEY, API_SECRET, 
        		"https://api.coolsms.co.kr");
    }
	
    /**
     * 단일 메시지 발송 예제
     */
    @RequestMapping("/sendSms")
    @ResponseBody
    public Map<String, String> sendOne(HttpSession session, String phone) {
        Message message = new Message();
        
        // 인증번호 6자리 생성
        GenerateCertNumber ge = new GenerateCertNumber();
        ge.setCertNumLength(6);
        String certNum = ge.excuteGenerate();
        
        // 발신번호 및 수신번호는 반드시 01012345678 형태로 입력되어야 합니다.
        message.setFrom("01051537598");
        message.setTo(phone);
        message.setText("[인증번호] : " + certNum);

        SingleMessageSentResponse response = messageService.sendOne(new SingleMessageSendingRequest(message));
        
        // 2000 정상 발송됨, 4000 수신 완료
        // 참고 : https://docs.coolsms.co.kr/api-reference/message-status-codes
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
