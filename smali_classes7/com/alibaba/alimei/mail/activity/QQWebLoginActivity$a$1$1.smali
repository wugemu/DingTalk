.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    move-object v6, v0

    .line 484
    .local v6, "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :goto_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    :cond_0
    :goto_1
    return-void

    .line 482
    .end local v6    # "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 489
    .restart local v6    # "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :cond_2
    :try_start_0
    invoke-static {v6}, Lhcn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string/jumbo v1, "https://mail.qq.com/cgi-bin/loginpage"

    .line 491
    .local v1, "baseUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->b:Lcom/uc/webview/export/WebView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;->a:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 493
    .end local v1    # "baseUrl":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 494
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "QQWebLoginActivity"

    const-string/jumbo v2, " load QQLoginURL "

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
