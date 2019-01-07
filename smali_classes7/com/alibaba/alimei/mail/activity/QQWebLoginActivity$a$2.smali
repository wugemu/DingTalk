.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/uc/webview/export/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->a:Lcom/uc/webview/export/WebView;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->b:Ljava/lang/String;

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
    .line 565
    check-cast p1, Ljava/lang/String;

    .line 1568
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 1570
    :goto_0
    const-string/jumbo v1, "\"complete\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->a:Lcom/uc/webview/export/WebView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 565
    :cond_0
    return-void

    .line 1568
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
