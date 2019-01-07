.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5LoadingActivity.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LoadingActivity"


# instance fields
.field private loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

.field private pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)Lcom/alipay/mobile/nebula/view/H5WebLoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    return-object v0
.end method


# virtual methods
.method public getPageStatues()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    invoke-direct {v8}, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    .line 43
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    const/4 v9, 0x1

    iput v9, v8, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingActivity(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    .line 46
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingTypeListen(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;)V

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 50
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->finish()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 57
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "appName"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "appName":Ljava/lang/String;
    const-string/jumbo v8, "appIcon"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "logo":Ljava/lang/String;
    const-string/jumbo v8, "appId"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "appId":Ljava/lang/String;
    const-string/jumbo v8, "loading_timeout"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v6

    .line 62
    .local v6, "timeout":I
    const-string/jumbo v8, "loading_type"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "type":Ljava/lang/String;
    const-string/jumbo v8, "H5LoadingActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "appName "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " logo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " timeout:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v8, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .line 69
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v8, v1, v11, v11}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->setLoadingInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getBackButton()Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$1;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :try_start_0
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 87
    new-instance v8, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;

    invoke-direct {v8, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$2;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->loadImage(Ljava/lang/String;Lioi;)V

    .line 97
    :cond_2
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->startLoadingAnimation()V

    .line 99
    if-lez v6, :cond_0

    .line 100
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    if-nez v8, :cond_0

    .line 102
    :try_start_1
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    iput-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    .line 103
    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    new-instance v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-direct {v9, p0, v7, v0, v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    mul-int/lit16 v10, v6, 0x3e8

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 104
    :catch_0
    move-exception v5

    .line 105
    .local v5, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5LoadingActivity"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 79
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    .line 80
    .restart local v5    # "throwable":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5LoadingActivity"

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 197
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingActivity(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    .line 198
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingManager(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 199
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5StartAppInfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 200
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingTypeListen(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;)V

    .line 201
    return-void
.end method

.method public onGetType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "appId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    const-string/jumbo v1, "H5LoadingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onGetType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    if-lez p2, :cond_0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 209
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5LoadingActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendToWebFail()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 117
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$3;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 130
    :cond_1
    return-void
.end method

.method public setPageStatue(I)V
    .locals 1
    .param p1, "statue"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    iput p1, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 192
    :cond_0
    return-void
.end method
