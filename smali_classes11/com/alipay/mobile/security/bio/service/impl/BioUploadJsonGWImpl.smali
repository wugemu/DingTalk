.class public Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;
.super Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;
.source "BioUploadJsonGWImpl.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 0
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 38
    return-void
.end method

.method private a(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 6
    .param p1, "gwRequest"    # Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    new-instance v3, Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {v3}, Lcom/alipay/mobile/security/bio/service/BioUploadResult;-><init>()V

    .line 136
    .local v3, "uploadResult":Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->b:Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    const-class v5, Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;

    .line 138
    .local v0, "bisJsonUploadGwFacade":Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;
    invoke-interface {v0, p1}, Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;->upload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;

    move-result-object v2

    .line 140
    .local v2, "gwResult":Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;
    if-eqz v2, :cond_0

    .line 141
    iget-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;->retCode:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 150
    .end local v0    # "bisJsonUploadGwFacade":Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;
    .end local v2    # "gwResult":Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;
    :goto_0
    return-object v3

    .line 143
    .restart local v0    # "bisJsonUploadGwFacade":Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;
    .restart local v2    # "gwResult":Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;
    :cond_0
    const/16 v4, 0xbba

    iput v4, v3, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "bisJsonUploadGwFacade":Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;
    .end local v2    # "gwResult":Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    .line 147
    const/16 v4, 0xbb9

    iput v4, v3, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    goto :goto_0
.end method


# virtual methods
.method public encryptUploadInfo(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 6
    .param p1, "zimId"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 51
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->c:Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/BioStoreService;->getRandom()[B

    move-result-object v3

    .line 52
    .local v3, "randomCode":[B
    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;-><init>()V

    .line 53
    .local v1, "logParam":Lcom/alipay/mobile/security/bio/service/BioStoreParameter;
    iget-object v4, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:Ljava/lang/Object;

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iput-object v4, v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->content:[B

    .line 54
    iget-object v4, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->publicKey:Ljava/lang/String;

    .line 55
    iput-object v3, v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->random:[B

    .line 56
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->c:Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/security/bio/service/BioStoreService;->encryptWithRandom(Lcom/alipay/mobile/security/bio/service/BioStoreParameter;)Lcom/alipay/mobile/security/bio/service/BioStoreResult;

    move-result-object v2

    .line 58
    .local v2, "logResult":Lcom/alipay/mobile/security/bio/service/BioStoreResult;
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;-><init>()V

    .line 59
    .local v0, "gwRequest":Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;
    iget-object v4, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->bisToken:Ljava/lang/String;

    .line 60
    if-eqz v2, :cond_0

    .line 61
    iget-object v4, v2, Lcom/alipay/mobile/security/bio/service/BioStoreResult;->encodeContext:[B

    invoke-static {v4, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLog:Ljava/lang/String;

    .line 62
    iget-object v4, v2, Lcom/alipay/mobile/security/bio/service/BioStoreResult;->encodeSeed:[B

    invoke-static {v4, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLogSig:Ljava/lang/String;

    .line 64
    :cond_0
    iget-boolean v4, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isPureLog:Z

    if-eqz v4, :cond_1

    .line 65
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->a(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v4

    .line 69
    :goto_0
    return-object v4

    .line 67
    :cond_1
    iget-object v4, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:Ljava/lang/Object;

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->content:Ljava/lang/String;

    .line 68
    iget-object v4, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->contentSig:Ljava/lang/String;

    iput-object v4, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->contentSig:Ljava/lang/String;

    .line 69
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->a(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v4

    goto :goto_0
.end method

.method public unEncryUploadInfo(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 3
    .param p1, "zimId"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;-><init>()V

    .line 75
    .local v0, "gwRequest":Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;
    iget-object v1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->bisToken:Ljava/lang/String;

    .line 76
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLogSig:Ljava/lang/String;

    .line 77
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->contentSig:Ljava/lang/String;

    .line 78
    iget-object v1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:Ljava/lang/Object;

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->content:Ljava/lang/String;

    .line 79
    iget-object v1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:Ljava/lang/Object;

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLog:Ljava/lang/String;

    .line 81
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->a(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v1

    return-object v1
.end method

.method public upload(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 1
    .param p1, "zimId"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    .prologue
    .line 42
    iget-object v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->unEncryUploadInfo(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->encryptUploadInfo(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v0

    goto :goto_0
.end method
