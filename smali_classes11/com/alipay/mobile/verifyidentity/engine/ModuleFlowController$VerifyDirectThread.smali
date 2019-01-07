.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;
.super Ljava/lang/Thread;
.source "ModuleFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyDirectThread"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 1

    .prologue
    .line 146
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 147
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->a:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->b:Ljava/lang/String;

    .line 149
    iget-object v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->entryModuleName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->c:Ljava/lang/String;

    .line 150
    iget-object v0, p2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->entryModuleData:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->d:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 152
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
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$500(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyDirectThread;->e:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$600(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    .line 158
    return-void
.end method
