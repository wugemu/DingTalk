.class public Lcom/taobao/securityjni/EnvironmentDetector;
.super Ljava/lang/Object;
.source "EnvironmentDetector.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private context:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/taobao/securityjni/EnvironmentDetector;->context:Landroid/content/ContextWrapper;

    .line 15
    return-void
.end method


# virtual methods
.method public isRoot()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iget-object v2, p0, Lcom/taobao/securityjni/EnvironmentDetector;->context:Landroid/content/ContextWrapper;

    .line 24
    invoke-static {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 25
    .local v1, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getRootDetectComp()Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;

    move-result-object v0

    .line 26
    .local v0, "comRoot":Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/taobao/wireless/security/sdk/rootdetect/IRootDetectComponent;->isRoot()Z

    move-result v2

    .line 30
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSimulator()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v2, p0, Lcom/taobao/securityjni/EnvironmentDetector;->context:Landroid/content/ContextWrapper;

    .line 40
    invoke-static {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    .line 41
    .local v1, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSimulatorDetectComp()Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;

    move-result-object v0

    .line 42
    .local v0, "comSimulator":Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcom/taobao/wireless/security/sdk/simulatordetect/ISimulatorDetectComponent;->isSimulator()Z

    move-result v2

    .line 46
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
