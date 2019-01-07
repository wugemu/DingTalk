.class public Lcom/ut/secbody/SecurityMatrix;
.super Ljava/lang/Object;
.source "SecurityMatrix.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dataReceive(Ljava/lang/String;)Z
    .locals 2
    .param p0, "usertrackData"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v0

    .line 11
    .local v0, "securityBodyComponent":Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->putUserTrackRecord(Ljava/lang/String;)Z

    move-result v1

    .line 17
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
