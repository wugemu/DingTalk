.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/uc/webview/export/WebView;Landroid/net/Uri;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/uc/webview/export/WebView;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;Ljava/lang/String;Lcom/uc/webview/export/WebView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->b:Lcom/uc/webview/export/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 471
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->c:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    move-object v0, v3

    .line 473
    .local v0, "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    :cond_0
    :goto_1
    return-void

    .line 471
    .end local v0    # "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    .restart local v0    # "activity":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "html":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1$1;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$a$1;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 498
    .end local v2    # "html":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 499
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "QQWebLoginActivity"

    const-string/jumbo v4, " load QQLoginURL Thread: "

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
