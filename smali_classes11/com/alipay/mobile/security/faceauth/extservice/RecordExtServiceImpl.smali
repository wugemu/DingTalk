.class public Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;
.super Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
.source "RecordExtServiceImpl.java"


# instance fields
.field a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getRetryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->getRetryID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->b:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->create(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->destroy()V

    .line 65
    return-void
.end method

.method public setExtProperty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setExtProperty(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public setRetryID(Ljava/lang/String;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setRetryID(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->setUniqueID(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V
    .locals 1
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 22
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V
    .locals 1
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtServiceImpl;->a:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 27
    return-void
.end method
