.class public Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    :try_start_0
    new-instance v1, Lcom/alibaba/dingtalk/share/share/ShareConstants;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/share/ShareConstants;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/ShareConstants;->getWXAppID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 28
    iget-object v1, p0, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/opensdk/openapi/IWXAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "baseReq"    # Lcom/tencent/mm/opensdk/modelbase/BaseReq;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->getType()I

    .line 60
    return-void
.end method

.method public onResp(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .locals 1
    .param p1, "baseResp"    # Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    .prologue
    .line 68
    invoke-static {}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getInstance()Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->getWeiXinExecutor()Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/laiwang/tide/share/business/excutor/wx/WeiXinExecutor;->callback(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/wxapi/WXEntryActivity;->finish()V

    .line 70
    return-void
.end method
