.class public Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "QQWebLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/Button;

.field private f:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    .line 424
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    .line 3611
    const-string/jumbo v0, "isMobile() {"

    const-string/jumbo v1, "isMobile() { return false;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    const/4 v5, 0x1

    const v4, 0x3ecccccd    # 0.4f

    .line 47
    .line 3230
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3231
    const-string/jumbo v1, "document.getElementById(\'security-dialog_QMDialog\').style.opacity = 1;\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3232
    const-string/jumbo v1, "document.getElementById(\'security-dialog_QMDialog\').style.left = \'100px\';\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3233
    const-string/jumbo v1, "document.getElementById(\'security-dialog_QMDialog\').style.top = \'250px\';\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3234
    const-string/jumbo v1, "document.getElementById(\'security-dialog_QMDialog__content_\').style.visibility = \'visible\';"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3236
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3238
    const-string/jumbo v0, "QQWebLoginActivity"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "old scale is "

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getScaleX()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setScaleX(F)V

    .line 3241
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getScaleY()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setScaleY(F)V

    .line 3243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3319
    const-string/jumbo v0, "QQWebLoginActivity"

    const-string/jumbo v1, "start polling auth code"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3323
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "pollingAuthCode"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->f:Ljava/util/Timer;

    .line 3324
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->f:Ljava/util/Timer;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/ref/WeakReference;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    .param p1, "x1"    # Lcom/uc/webview/export/WebView;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 47
    .line 5204
    const-string/jumbo v0, "https://xui.ptlogin2.qq.com/cgi-bin/xlogin?target=self&appid=522005705&daid=4&s_url=https://mail.qq.com/cgi-bin/readtemplate?check=false%26t=loginpage_new_jump%26vt=passport%26vm=wpt%26ft=loginpage%26target=&style=25&low_login=1&proxy_url=https://mail.qq.com/proxy.html&need_qr=0&hide_border=1&border_radius=0&self_regurl=http://zc.qq.com/chs/index.html?type=1&app_id=11005?t=regist&pt_feedback_link=http://support.qq.com/discuss/350_1.shtml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->requestFocus()Z

    .line 5214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5215
    const-string/jumbo v0, "if(window.location.href.startsWith(\'%s\')) {\nvar meta = document.createElement(\'meta\');\nmeta.setAttribute(\'name\', \'viewport\');\nmeta.setAttribute(\'content\', \'width=device-width\');\ndocument.getElementsByTagName(\'head\')[0].appendChild(meta);\n}"

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "https://mail.qq.com/cgi-bin/loginpage"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5216
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1, v0, v4}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const-string/jumbo v1, "pt.plogin.switchpage(1, undefined)"

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5219
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5222
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const-string/jumbo v1, "document.getElementById(\'u\').focus()"

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5223
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "document.getElementById(\'u\').value=\""

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->d:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string/jumbo v3, "\""

    aput-object v3, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5224
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "document.getElementById(\'uin_tips\').style.visibility= \"hidden\""

    aput-object v2, v1, v5

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const-string/jumbo v1, "document.getElementById(\'p\').focus()"

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 5205
    :cond_0
    :goto_0
    return-void

    .line 5206
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5249
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5251
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const-string/jumbo v2, "document.getElementById(\'mainFrame\').contentWindow._oPopInfo.openimap;"

    new-instance v3, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method static final varargs a([Ljava/lang/Object;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 615
    sget-boolean v5, Lzb;->b:Z

    if-eqz v5, :cond_1

    array-length v5, p0

    if-eqz v5, :cond_1

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    .line 618
    .local v1, "arr":[Ljava/lang/Object;
    array-length v3, p0

    .line 620
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 621
    aget-object v0, v1, v2

    .line 622
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v5, "qqLogin----->>>"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v1    # "arr":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Lcom/uc/webview/export/WebView;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    .param p1, "x1"    # Lcom/uc/webview/export/WebView;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    .line 4394
    const-string/jumbo v2, "sid"

    invoke-static {p2, v2}, Lajr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4395
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4396
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4397
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 4398
    aget-object v2, v2, v1

    .line 4399
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "https://mail.qq.com/cgi-bin/frame_html?url=/cgi-bin/setting4?fun=list"

    aput-object v4, v3, v1

    const-string/jumbo v1, "&sid="

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->c:Ljava/lang/String;

    .line 4401
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4403
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 645
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 646
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 648
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 649
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 651
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 652
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Lcom/uc/webview/export/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1388

    .line 631
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 632
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 633
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v5, "User-Agent"

    const-string/jumbo v6, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 636
    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 637
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 638
    .local v3, "inStream":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 639
    .local v1, "data":[B
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v5, "gb18030"

    invoke-direct {v2, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 640
    .local v2, "html":Ljava/lang/String;
    return-object v2
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 47
    .line 3350
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 3354
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 3355
    const-string/jumbo v1, "function getAuthCode() {\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3356
    const-string/jumbo v1, "  var elements = document.getElementsByClassName(\'securePwd_cnt_left_num\');\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3357
    const-string/jumbo v1, "  var value = \'\'; \n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3358
    const-string/jumbo v1, "  if (elements.length > 0) { \n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3359
    const-string/jumbo v1, "    var element = elements[0];\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3360
    const-string/jumbo v1, "    for (var i = 0; i < element.children.length; i++) {\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3361
    const-string/jumbo v1, "      var node = element.children[i]; value += node.textContent;\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3362
    const-string/jumbo v1, "    }\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3363
    const-string/jumbo v1, "  }\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3364
    const-string/jumbo v1, "  return value\n;"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3365
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3366
    const-string/jumbo v1, "getAuthCode()"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3368
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3370
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v0, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->f:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Laxo$f;->send_sms_btn:I

    if-ne v3, v4, :cond_0

    .line 413
    const-string/jumbo v2, "1069070069"

    .line 414
    .local v2, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v1, "\u914d\u7f6e\u90ae\u4ef6\u5ba2\u6237\u7aef"

    .line 415
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "smsto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "sms_body"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 419
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1132
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1133
    const-string/jumbo v4, "account_name"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->d:Ljava/lang/String;

    .line 1135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 86
    :goto_0
    if-nez v2, :cond_1

    .line 87
    const-string/jumbo v2, "QQWebLoginActivity"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "accountName: "

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->d:Ljava/lang/String;

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v5, " is not QQMail, so finish"

    aput-object v5, v4, v3

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->finish()V

    .line 121
    :goto_1
    return-void

    .line 1139
    :cond_0
    invoke-static {v2}, Lafh;->i(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 92
    :cond_1
    sget v2, Laxo$g;->cmail_activity_qq_login:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->setContentView(I)V

    .line 94
    sget v2, Laxo$f;->root_view:I

    .line 1372
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b:Landroid/view/ViewGroup;

    .line 96
    new-instance v2, Lcom/uc/webview/export/WebView;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    .line 2125
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 2126
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/webview/export/CookieManager;->removeAllCookie()V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 104
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v1

    .line 105
    .local v1, "webSettings":Lcom/uc/webview/export/WebSettings;
    const-string/jumbo v2, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 108
    invoke-virtual {v1, v3}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 109
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/WebSettings;->setAllowContentAccess(Z)V

    .line 110
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 111
    invoke-virtual {v1, v6}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 112
    invoke-virtual {v1, v3}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 113
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2, v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    sget v2, Laxo$f;->send_sms_btn:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->e:Landroid/widget/Button;

    .line 116
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2143
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v2

    .line 2144
    invoke-virtual {v2, v6}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 2153
    new-instance v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;B)V

    .line 2432
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 2156
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3, v2}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 3160
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const-string/jumbo v3, "https://xui.ptlogin2.qq.com/cgi-bin/xlogin?target=self&appid=522005705&daid=4&s_url=https://mail.qq.com/cgi-bin/readtemplate?check=false%26t=loginpage_new_jump%26vt=passport%26vm=wpt%26ft=loginpage%26target=&style=25&low_login=1&proxy_url=https://mail.qq.com/proxy.html&need_qr=0&hide_border=1&border_radius=0&self_regurl=http://zc.qq.com/chs/index.html?type=1&app_id=11005?t=regist&pt_feedback_link=http://support.qq.com/discuss/350_1.shtml"

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 182
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->f:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->f:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 185
    :cond_0
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->c:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    if-eqz v1, :cond_1

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->clearHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 200
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a:Lcom/uc/webview/export/WebView;

    .line 201
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 177
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 169
    return-void
.end method
