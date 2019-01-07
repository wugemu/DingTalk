.class public Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuClickRpc"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->a:Ljava/lang/String;

    .line 104
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
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-string/jumbo v1, "INIT"

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->access$000(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getVerifyId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 118
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 119
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->dismissProgressDialog()V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->access$100(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 125
    return-void

    .line 114
    :cond_0
    const-string/jumbo v1, "VERIFY_INIT"

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->dismissProgressDialog()V

    .line 124
    throw v0
.end method
