package com.blogs.util;

import org.springframework.util.ResourceUtils;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;
import java.io.File;
import java.util.Properties;

public class TestEmailUtils {


    public static void main(String[] args){
        try {
            Properties properties = new Properties();
            properties.put("mail.transport.protocol", "smtp");// 连接协议
            properties.put("mail.smtp.host", "smtp.qq.com");// 主机名
            properties.put("mail.smtp.port", 465);// 端口号
            properties.put("mail.smtp.auth", "true"); //是否需要认证
            properties.put("mail.smtp.ssl.enable", "true");// 设置是否使用ssl安全连接 ---一般都使用
            properties.put("mail.debug", "true");// 设置是否显示debug信息 true 会在控制台显示相关信息
            // 得到回话对象
            Session session = Session.getInstance(properties);

            Transport transport = session.getTransport();
            // 连接自己的邮箱账户
            transport.connect("1321703568@qq.com", "ZH027931!0");// 密码为QQ邮箱开通的stmp服务后得到的客户端授权码
//        transport.connect();
//        session.set
            // 获取邮件对象
            Message message = new MimeMessage(session);
            // 设置发件人邮箱地址
            message.setFrom(new InternetAddress("1321703568@qq.com"));
            // 设置收件人邮箱地址
            message.setRecipients(Message.RecipientType.TO, new InternetAddress[]{new InternetAddress("528881223@qq.com")});

            //附件地址
//        URL url = ResourceUtils.getURL("classpath:application.properties");
//        String path = url.getPath();
            File file = ResourceUtils.getFile("classpath:福建电子口岸大屏部署说明.docx");
            String absolutePath = file.getAbsolutePath();
            //3邮件内容:主题、内容
            message.setSubject("这是我用Java发来的邮件--带附件的....");

            //添加附件部分
            //邮件内容部分1---文本内容
            MimeBodyPart body0 = new MimeBodyPart(); //邮件中的文字部分
            body0.setContent("这是两张<font color='red'>图片</font>....","text/html;charset=utf-8");

            //邮件内容部分2---附件1
            MimeBodyPart body1 = new MimeBodyPart(); //附件1
            body1.setDataHandler( new DataHandler(new FileDataSource(absolutePath)) );//./代表项目根目录下
            body1.setFileName(MimeUtility.encodeText(file.getName()) );//中文附件名，解决乱码


            //把上面的3部分组装在一起，设置到msg中
            MimeMultipart mm = new MimeMultipart();
            mm.addBodyPart(body0);
            mm.addBodyPart(body1);
            message.setContent(mm);

            // 发送邮件
            transport.sendMessage(message,message.getAllRecipients());
            transport.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
