.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

.field final synthetic val$moduleStartTime:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;J)V
    .locals 2

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iput-wide p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->val$moduleStartTime:J

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
.method public onModuleExecuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 460
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->isLocalTrans()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-static {v0, p4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$800(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)Ljava/util/HashMap;

    move-result-object v7

    .line 462
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getLogicModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    const-string/jumbo v0, "module"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->getLogicModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :goto_0
    const-string/jumbo v1, "useBird"

    iget-boolean v0, p5, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Y"

    :goto_1
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v1, "UC-MobileIC-150810-3"

    const-string/jumbo v2, "20000666"

    const-string/jumbo v3, "mdtchscp"

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->val$moduleStartTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    move-object v5, p1

    .line 468
    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavorRightAway(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$3;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$900(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 473
    return-void

    .line 465
    :cond_1
    const-string/jumbo v0, "module"

    invoke-virtual {v7, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 467
    :cond_2
    const-string/jumbo v0, "N"

    goto :goto_1
.end method
