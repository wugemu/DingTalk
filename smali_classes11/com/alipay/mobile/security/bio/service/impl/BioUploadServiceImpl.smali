.class public Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;
.super Lcom/alipay/mobile/security/bio/service/BioUploadService;
.source "BioUploadServiceImpl.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;-><init>()V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->addBioUploadCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V

    .line 42
    :cond_0
    return-void
.end method

.method public initPublicKey(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isTestEnv"    # Z

    .prologue
    .line 88
    const-string/jumbo v2, "bid-log-key-public.key"

    .line 89
    .local v2, "publicKeyFileName":Ljava/lang/String;
    const-string/jumbo v3, "bid-log-key-public_t.key"

    .line 92
    .local v3, "publicKeyFileNameBak":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 93
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->c:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "btPublicKey":[B
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 99
    .local v1, "publicKey":Ljava/lang/String;
    return-object v1

    .line 95
    .end local v0    # "btPublicKey":[B
    .end local v1    # "publicKey":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "btPublicKey":[B
    goto :goto_0
.end method

.method public isFulled()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->isFulled()Z

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    new-instance v0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    const-string/jumbo v1, "BioUploadService"

    invoke-direct {v0, v1, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;-><init>(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->start()V

    .line 75
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->c:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->kill()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    .line 84
    :cond_0
    return-void
.end method

.method public setZimId(Ljava/lang/String;)V
    .locals 1
    .param p1, "zimId"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->setZimId(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I
    .locals 1
    .param p1, "item"    # Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-boolean v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isTestEnv:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->initPublicKey(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->a:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->addBioUploadItem(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)V

    .line 58
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
