.class public Lcom/taobao/securityjni/SecBody;
.super Ljava/lang/Object;
.source "SecBody.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

.field private staticDataStoreComp:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 21
    .local v0, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecurityBodyComp()Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/securityjni/SecBody;->proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    .line 23
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/securityjni/SecBody;->staticDataStoreComp:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public getSecBodyData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "timeStamp"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v1, p0, Lcom/taobao/securityjni/SecBody;->proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 32
    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->GetGlobalAppKey()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "appKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/taobao/securityjni/SecBody;->staticDataStoreComp:Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/taobao/securityjni/SecBody;->proxy:Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;

    invoke-interface {v1, p1, v0}, Lcom/taobao/wireless/security/sdk/securitybody/ISecurityBodyComponent;->getSecurityBodyData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .end local v0    # "appKey":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
