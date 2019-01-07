.class public Lcom/alibaba/android/rimet/apshare/ShareEntryActivity;
.super Landroid/app/Activity;
.source "ShareEntryActivity.java"

# interfaces
.implements Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    :try_start_0
    invoke-static {p0}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v1

    .line 1051
    iget-object v1, v1, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/apshare/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/alipay/share/sdk/openapi/IAPApi;->handleIntent(Landroid/content/Intent;Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/rimet/apshare/ShareEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 52
    invoke-static {p0}, Lgvs;->a(Landroid/content/Context;)Lgvs;

    move-result-object v1

    .line 2051
    iget-object v1, v1, Lgvs;->a:Lcom/alipay/share/sdk/openapi/IAPApi;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/apshare/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/alipay/share/sdk/openapi/IAPApi;->handleIntent(Landroid/content/Intent;Lcom/alipay/share/sdk/openapi/IAPAPIEventHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReq(Lcom/alipay/share/sdk/openapi/BaseReq;)V
    .locals 0
    .param p1, "baseReq"    # Lcom/alipay/share/sdk/openapi/BaseReq;

    .prologue
    .line 62
    return-void
.end method

.method public onResp(Lcom/alipay/share/sdk/openapi/BaseResp;)V
    .locals 0
    .param p1, "baseResp"    # Lcom/alipay/share/sdk/openapi/BaseResp;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/apshare/ShareEntryActivity;->finish()V

    .line 67
    return-void
.end method
