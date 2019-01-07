.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

.field final synthetic val$finalToken:Ljava/lang/String;

.field final synthetic val$finalVerifyId:Ljava/lang/String;

.field final synthetic val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

.field final synthetic val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 1

    .prologue
    .line 384
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalVerifyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalVerifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$700(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 388
    return-void
.end method
