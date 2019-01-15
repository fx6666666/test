package com.wiimedia.utils;
 
import java.util.Random;
 
public class GetRandomStr {
 /**
 *
 *<p>Project:mryl_phone_v2</p>
 *
 *<p>:mryl_phone_v2</p>
 *
 *<p>Description:生成随即字符串 </p>
 *
 *<p>Company:Wiimedia</p>
 *
 *@Athor:SongJia
 *
 *@Date:2016-7-14 上午11:14:46
 *
 */
 public String getRandomString(int length) {
 String base = "abcdefghijklmnopqrstuvwxyz0123456789";
 Random random = new Random();
 StringBuffer sb = new StringBuffer();
 for (int i = 0; i < length; i++) {
  int number = random.nextInt(base.length());
  sb.append(base.charAt(number));
 }
 return sb.toString();
 }
}
