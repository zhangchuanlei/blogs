package com.blogs.util;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class TestFormat {
    static String query;

    static {
        try {
            query = "[{\"transaction_id\":{\"value\":45},\"doc_count\":556,\"total_page_load_time_count\":{\"value\":556.0},\"total_page_load_time\":{\"value\":589.7797510623932},\"error_return_code_count\":{\"value\":325.0},\"all_return_code_count\":{\"value\":526.7763602733612},\"total_trans_process_time_count\":{\"value\":556.0},\"total_trans_process_time\":{\"value\":559.750328540802},\"key\":\"" + URLEncoder
                        .encode("综合理财", "UTF-8") + "\"}," +
                                "{\"transaction_id\":{\"value\":45},\"doc_count\":556,\"total_page_load_time_count\":{\"value\":556.0},\"total_page_load_time\":{\"value\":589.7797510623932},\"error_return_code_count\":{\"value\":325.0},\"all_return_code_count\":{\"value\":526.7763602733612},\"total_trans_process_time_count\":{\"value\":556.0},\"total_trans_process_time\":{\"value\":559.750328540802},\"key\":\"" + URLEncoder.encode("消费信贷系统", "UTF-8") + "\"}," +
                                "{\"transaction_id\":{\"value\":45},\"doc_count\":556,\"total_page_load_time_count\":{\"value\":556.0},\"total_page_load_time\":{\"value\":589.7797510623932},\"error_return_code_count\":{\"value\":325.0},\"all_return_code_count\":{\"value\":526.7763602733612},\"total_trans_process_time_count\":{\"value\":556.0},\"total_trans_process_time\":{\"value\":559.750328540802},\"key\":\"" + URLEncoder.encode("核心系统", "UTF-8") + "\"}," +
                                "{\"transaction_id\":{\"value\":45},\"doc_count\":556,\"total_page_load_time_count\":{\"value\":556.0},\"total_page_load_time\":{\"value\":589.7797510623932},\"error_return_code_count\":{\"value\":325.0},\"all_return_code_count\":{\"value\":526.7763602733612},\"total_trans_process_time_count\":{\"value\":556.0},\"total_trans_process_time\":{\"value\":559.750328540802},\"key\":\"" + URLEncoder.encode("支付业务", "UTF-8") + "\"}]";
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(query);
    }
}
