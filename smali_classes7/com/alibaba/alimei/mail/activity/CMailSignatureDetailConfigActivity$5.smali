.class Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;
.super Landroid/webkit/WebViewClient;
.source "CMailSignatureDetailConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 301
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v0, "javascript:function setBgColorFunction(){document.getElementById(\"wrap\").style.boxShadow = \"0 6px 12px rgba(0,0,0,0.1)\";  }  setBgColorFunction()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "javascript:"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;->b:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-static {v0, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;Z)Z

    .line 305
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$5;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;

    invoke-interface {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$a;->a()V

    .line 308
    :cond_0
    return-void
.end method
