.class final Lcom/alipay/mobile/verifyidentity/utils/b;
.super Ljava/lang/Object;
.source "VIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

.field final synthetic b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

.field final synthetic c:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->c:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 118
    const-string/jumbo v1, "MENU"

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 119
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 120
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    .line 122
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    if-eqz v1, :cond_0

    .line 123
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 124
    const-string/jumbo v2, "1002"

    iput-object v2, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->c:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->a:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 127
    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ligh$h;->network_server_unavailable:I

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/utils/b;->b:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    .line 134
    throw v0
.end method
