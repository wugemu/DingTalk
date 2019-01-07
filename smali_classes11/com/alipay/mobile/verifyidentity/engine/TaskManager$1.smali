.class Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

.field final synthetic val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

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
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextVerifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextModuleData:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    .line 89
    return-void
.end method
