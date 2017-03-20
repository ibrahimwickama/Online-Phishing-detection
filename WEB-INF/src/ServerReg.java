import java.io.File;
import java.io.FileOutputStream;

public class ServerReg {
    public void Reg(String s1, String s2, String path, String servername) {
        try {
    /*		File f=new File(path+"/MAIL/"+user);
            System.out.println(f.mkdirs());
			System.out.println(f.getAbsolutePath());
			File f1=new File(f.getAbsolutePath()+"/PASSWD.PM");
			String str="# Mercury/32 User Information File"+"\n"+"POP3_access:"+pass+"\n"+"APOP_secret:";
			FileOutputStream fi=new FileOutputStream(f1,false);
			byte b[]=str.getBytes();
			fi.write(b);
			//FileWriter fw=new FileWriter(f1);
			//fw.append("# Mercury/32 User Information File"+"\n"+"POP3_access: ramkumar"+"\n"+"APOP_secret:");
			File f2=new File(path+"/MAIL/PMAIL.USR");
			FileOutputStream fii=new FileOutputStream(f2,true);
			String s="U;"+user+";"+user+"\n";
			byte b1[]=s.getBytes();
			fii.write(b1);*/

            File f = new File(path + "user.conf");
            FileOutputStream fo = new FileOutputStream(f, true);
            String str = "\n" + "user." + s1 + "@" + servername + "=" + s2;
            str = str + "\n";
            str = str + "userprop." + s1 + "@" + servername + ".forwardAddresses=";
            byte b[] = str.getBytes();
            fo.write(b);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}