.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
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
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    check-cast p1, Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 1257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1262
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)Lcom/uc/webview/export/WebView;

    move-result-object v0

    const-string/jumbo v2, "document.getElementById(\'mainFrame\').contentWindow._bHadOpenSecurity;"

    new-instance v3, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method
