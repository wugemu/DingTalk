.class public Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;
.super Landroid/app/Activity;
.source "WBShareActivity.java"

# interfaces
.implements Ljgo$a;


# instance fields
.field private a:Ljgp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->a:Ljgp;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v1, Lcom/alibaba/dingtalk/share/share/ShareConstants;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/share/ShareConstants;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/ShareConstants;->getSInaAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljgx;->a(Landroid/content/Context;Ljava/lang/String;)Ljgp;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->a:Ljgp;

    .line 34
    iget-object v1, p0, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->a:Ljgp;

    invoke-interface {v1}, Ljgp;->c()Z

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->a:Ljgp;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljgp;->a(Landroid/content/Intent;Ljgo$a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->a:Ljgp;

    invoke-interface {v1, p1, p0}, Ljgp;->a(Landroid/content/Intent;Ljgo$a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onResponse(Ljgm;)V
    .locals 1
    .param p1, "baseResponse"    # Ljgm;

    .prologue
    .line 66
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getSinaExecutor(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/sina/SinaWeiboExecutor;->callback(Ljgm;)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/sinaapi/WBShareActivity;->finish()V

    .line 68
    return-void
.end method
