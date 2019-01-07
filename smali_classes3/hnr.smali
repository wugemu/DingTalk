.class public final Lhnr;
.super Ljava/lang/Object;
.source "MiniAppLoadingManagerProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhnr;->a:J

    return-void
.end method


# virtual methods
.method public final exit()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2046
    sget-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 65
    .local v0, "miniappLoadingActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
    if-eqz v0, :cond_1

    .line 66
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->finishAndRemoveTask()V

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->finish()V

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v1, "MiniAppLoadingManagerProviderImpl"

    const-string/jumbo v2, "exit MiniAppLoadingActivity==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getPageStatues()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 6046
    sget-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 108
    .local v0, "miniappLoadingActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6239
    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    iget v1, v1, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    :cond_0
    return v1
.end method

.method public final getStartLoadingTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    iget-wide v0, p0, Lhnr;->a:J

    return-wide v0
.end method

.method public final isReady()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4046
    sget-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 89
    .local v0, "miniappLoadingActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 92
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p5, "timeout"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 36
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 38
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v1, "loading_timeout"

    invoke-virtual {p1, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string/jumbo v1, "loading_type"

    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 42
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "MiniAppLoadingManagerProviderImpl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "open"

    aput-object v4, v2, v3

    const-string/jumbo v3, "bundle="

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1042
    sput-object p0, Lhok;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 2034
    sput-object p4, Lhok;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lhnr;->a:J

    .line 50
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v1

    invoke-virtual {v1, p2, v5}, Lhlq;->a(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public final pageDestroy()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 5046
    sget-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 99
    .local v0, "miniappLoadingActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final playExitAnimation()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final sendToWebFail()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3046
    sget-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 79
    .local v0, "miniappLoadingActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string/jumbo v1, "MiniAppLoadingManagerProviderImpl"

    const-string/jumbo v2, "sendToWebFail MiniAppLoadingActivity==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setPageStatue(I)V
    .locals 2
    .param p1, "statue"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 7046
    sget-object v0, Lhok;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    .line 117
    .local v0, "miniappLoadingActivity":Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7243
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v1, :cond_0

    .line 7244
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    iput p1, v1, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 120
    :cond_0
    return-void
.end method

.method public final update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 56
    return-void
.end method
