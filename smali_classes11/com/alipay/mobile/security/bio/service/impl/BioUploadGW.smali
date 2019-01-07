.class public abstract Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;
.super Ljava/lang/Object;
.source "BioUploadGW.java"


# instance fields
.field protected a:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field protected b:Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

.field protected c:Lcom/alipay/mobile/security/bio/service/BioStoreService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v1, "BioServiceManager can\'t be null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->a:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 35
    const-class v0, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->b:Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    .line 36
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioStoreService;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->c:Lcom/alipay/mobile/security/bio/service/BioStoreService;

    .line 37
    return-void
.end method


# virtual methods
.method public abstract upload(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
.end method
