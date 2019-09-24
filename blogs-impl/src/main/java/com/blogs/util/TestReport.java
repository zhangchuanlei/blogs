package com.blogs.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class TestReport {
    public static void main(String[] args) throws UnsupportedEncodingException {
        String str = "电子口岸数据中心新架构应用性能综合分析，包括货物申报、运输工具、总对总、仓单申报、税费支付、新一代报关服务、新一代公路仓单、单点登录、企业资质、用户管理、桌面框架、公共服务、参数服务等30左右应用系统。";

//        String strApp = "将电子口岸执法系统按保障程度分成Pub、Eport、Eport2三个域，Pub域涵盖核心业务应用，包含：单点登录cas,代理报关委托acd,代理报关委托SpuerPassAcd,随附单据上传ddoc,电子手册权限服务系统SuperPassPtsPub，门户portal，激活码管理系统SuperPassPas，SP3.0框架SuperPassPub，报关申报SuperPassDec等;Eport域中包括62个应用，Eport2域中包括49个应用。";
        String encodeApp = URLEncoder.encode(str, "UTF-8");
        System.out.println("encodeApp is:..." + encodeApp);

    }

    //    public static void main(String[] args) throws UnsupportedEncodingException {
//        String str = "应用性能管理平台目前共纳管120个业务系统、320个服务节点。";
//        String encode = URLEncoder.encode(str, "utf-8");
////        System.out.println(encode);
//
//        String strApp = "将电子口岸执法系统按保障程度分成Pub、Eport、Eport2三个域，Pub域涵盖核心业务应用，包含：单点登录cas,代理报关委托acd,代理报关委托SpuerPassAcd,随附单据上传ddoc,电子手册权限服务系统SuperPassPtsPub，门户portal，激活码管理系统SuperPassPas，SP3.0框架SuperPassPub，报关申报SuperPassDec等;Eport域中包括62个应用，Eport2域中包括49个应用。";
////        String encodeApp = URLEncoder.encode(strApp, "UTF-8");
////        System.out.println("encodeApp is:..." + encodeApp);
//    }
}
