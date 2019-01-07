.class public Lcom/taobao/securityjni/SecurityCheck;
.super Ljava/lang/Object;
.source "SecurityCheck.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

.field private proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    .line 21
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getIndieKitComp()Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public getCheckSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "timeStamp"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    new-instance v0, Lcom/taobao/securityjni/tools/DataContext;

    invoke-direct {v0}, Lcom/taobao/securityjni/tools/DataContext;-><init>()V

    .line 28
    .local v0, "ctx":Lcom/taobao/securityjni/tools/DataContext;
    const/4 v1, 0x0

    iput v1, v0, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/taobao/securityjni/SecurityCheck;->getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCheckSignature(Ljava/lang/String;Lcom/taobao/securityjni/tools/DataContext;)Ljava/lang/String;
    .locals 6
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "dataCtx"    # Lcom/taobao/securityjni/tools/DataContext;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v3, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v4

    .line 50
    :goto_0
    return-object v3

    .line 36
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v2, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "timestamp"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    .line 39
    .local v1, "paramContext":Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;
    iput-object v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 40
    const/4 v3, 0x1

    iput v3, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    .line 41
    iget-object v3, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    if-eqz v3, :cond_2

    const-string/jumbo v3, ""

    iget-object v5, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 42
    new-instance v3, Ljava/lang/String;

    iget-object v4, p2, Lcom/taobao/securityjni/tools/DataContext;->extData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 50
    :goto_1
    iget-object v3, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-interface {v3, v1}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 44
    :cond_2
    iget v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    if-gez v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    iput v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    .line 45
    iget-object v3, p0, Lcom/taobao/securityjni/SecurityCheck;->manager:Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataStoreComp()Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;

    move-result-object v3

    iget v5, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    invoke-interface {v3, v5}, Lcom/taobao/wireless/security/sdk/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "appKey":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move-object v3, v4

    .line 47
    goto :goto_0

    .line 44
    .end local v0    # "appKey":Ljava/lang/String;
    :cond_4
    iget v3, p2, Lcom/taobao/securityjni/tools/DataContext;->index:I

    goto :goto_2

    .line 48
    .restart local v0    # "appKey":Ljava/lang/String;
    :cond_5
    iput-object v0, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    .locals 1
    .param p1, "paramContext"    # Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/securityjni/SecurityCheck;->proxy:Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;

    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/indiekit/IIndieKitComponent;->indieKitRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public reportSusText(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extraKey"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public validateFileSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileSignature"    # Ljava/lang/String;
    .param p2, "fileHash"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method
