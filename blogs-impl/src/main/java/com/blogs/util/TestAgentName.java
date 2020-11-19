package com.blogs.util;

import com.ailk.toptea.interfac.a4.audit.config.StringUtil;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class TestAgentName {

    public static void main(String[] args) {
        String str = "PHP:PHP_TIER172 bb:80(user-virtual-machine)";
        String simpleAgentStr = getSimpleAgentStr(str);
        System.out.println("->>>"+simpleAgentStr);
    }

    private static String getSimpleAgentStr(String agentName) {
        String quStr=agentName.substring(agentName.indexOf("(")+1,agentName.indexOf(")"));
        if(StringUtil.isEmpty(quStr)){
            return agentName;
        }
        return  quStr;
    }
}
