.class public abstract Lcom/alipay/mobile/security/bio/service/BioStoreService;
.super Lcom/alipay/mobile/security/bio/service/BioService;
.source "BioStoreService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encryptWithRandom(Lcom/alipay/mobile/security/bio/service/BioStoreParameter;)Lcom/alipay/mobile/security/bio/service/BioStoreResult;
.end method

.method public abstract encryptWithRandom([BLjava/lang/String;[B)[B
.end method

.method public abstract getRandom()[B
.end method

.method public abstract getValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract store(Ljava/lang/String;Ljava/lang/String;)I
.end method
