.class Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;
.super Ljava/lang/Object;
.source "MicroModuleContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

.field final synthetic val$listener:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

.field final synthetic val$moduleData:Ljava/lang/String;

.field final synthetic val$moduleName:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$verifyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$moduleName:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$moduleData:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$params:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$listener:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    iput-object p8, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

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
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->access$000(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;)Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$verifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$moduleName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$moduleData:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$params:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$listener:Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext$1;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/engine/ModuleManager;->startModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/module/ModuleLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
