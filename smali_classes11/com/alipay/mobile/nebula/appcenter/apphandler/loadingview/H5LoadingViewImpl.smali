.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;
.super Ljava/lang/Object;
.source "H5LoadingViewImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;


# static fields
.field public static final LOADING_TIMEOUT:Ljava/lang/String; = "loading_timeout"

.field public static final LOADING_TYPE:Ljava/lang/String; = "loading_type"

.field private static final TAG:Ljava/lang/String; = "H5LoadingViewImpl"


# instance fields
.field private mStartLoadingTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;->mStartLoadingTime:J

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    .line 58
    .local v0, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string/jumbo v1, "H5LoadingViewImpl"

    const-string/jumbo v2, "exit H5LoadingActivity==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPageStatues()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    .line 97
    .local v0, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->getPageStatues()I

    move-result v1

    .line 100
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStartLoadingTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;->mStartLoadingTime:J

    return-wide v0
.end method

.method public isReady()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    .line 78
    .local v0, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p5, "timeout"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 33
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "bundle":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .restart local p1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v1, "loading_timeout"

    invoke-virtual {p1, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string/jumbo v1, "loading_type"

    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "appId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingManager(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 42
    invoke-static {p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5StartAppInfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;->mStartLoadingTime:J

    .line 44
    return-void
.end method

.method public pageDestroy()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    .line 88
    .local v0, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playExitAnimation()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public sendToWebFail()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    .line 68
    .local v0, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->sendToWebFail()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string/jumbo v1, "H5LoadingViewImpl"

    const-string/jumbo v2, "sendToWebFail H5LoadingActivity==null"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPageStatue(I)V
    .locals 2
    .param p1, "statue"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    .line 106
    .local v0, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->setPageStatue(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 0
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .prologue
    .line 49
    return-void
.end method
