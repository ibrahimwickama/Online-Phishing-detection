package Appn;

public class Analyzer {
    public int analyze(String msg, String server, String domain) {
        int chance = 1;
        Appn.Linkguard l = new Appn.Linkguard(server);
        String current = "";
        boolean ok = true;
        while (ok) {
            int k = msg.indexOf("<a");
            if (k == -1) {
                ok = false;
            } else {
                msg = msg.substring(msg.indexOf("<a"), msg.length());
                current = msg.substring(0, msg.indexOf("/a>") + 3);
                String act = current.substring(0, current.indexOf(">"));
                act = act.substring(act.indexOf("=") + 1, act.length());
                String vis = current.substring(current.indexOf(">") + 1, current.lastIndexOf("<"));
                msg = msg.substring(current.length(), msg.length());
                int p = l.linkGuard(act, vis, domain);
                if (p < chance)
                    chance = p;
            }
        }
        System.out.println("-------------------------------------------------------\n" + chance);
        return chance;

    }

    public String changeLink(String msg, String server, String domain) {
        int k = msg.indexOf("<a");
        if (k != -1) {
            String temp = msg.substring(msg.indexOf("<a"), msg.length());
            Appn.Linkguard l = new Appn.Linkguard(server);
            String current = temp.substring(0, temp.indexOf("/a>") + 3);
            String act = current.substring(0, current.indexOf(">"));
            act = act.substring(act.indexOf("=") + 1, act.length());
            String vis = current.substring(current.indexOf(">") + 1, current.lastIndexOf("<"));
            int p = l.linkGuard(act, vis, domain);
            if (p == 1 && l.typeFind(act) == 3) {
                String tar = l.decode(act);
                msg = msg.replaceAll(act, tar);
            }
        }
        return msg;
    }
}