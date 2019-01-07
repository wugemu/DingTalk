.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;->this$1:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;

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
    .line 117
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "2003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;->this$1:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;

    invoke-static {v4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->access$300(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 119
    return-void
.end method
