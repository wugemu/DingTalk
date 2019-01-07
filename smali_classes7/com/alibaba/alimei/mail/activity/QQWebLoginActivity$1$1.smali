.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    check-cast p1, Ljava/lang/String;

    .line 1266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 1268
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1274
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->a:Z

    if-eqz v1, :cond_2

    .line 1275
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    const-string/jumbo v1, "document.getElementById(\'mainFrame\').contentWindow.openSecurityDialog(\'genauthcode\' , \'\' , \'3\' , \'\');"

    new-instance v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1287
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    const-string/jumbo v1, "document.getElementById(\'mainFrame\').contentWindow.openSecurityDialog(\'imap_smtp\',\'openimap\', 1,\'IMAP/SMTP\');"

    new-instance v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$2;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1300
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    const-string/jumbo v1, "document.getElementById(\'mainFrame\').contentWindow.openSecurityTips(\'imap_smtp\', \'openimap\', 1 ,\'IMAP/SMTP\');"

    new-instance v2, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$3;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method
