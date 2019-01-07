.class public Lcom/alipay/mobile/common/cache/disk/CacheException;
.super Ljava/lang/Exception;
.source "CacheException.java"


# instance fields
.field private a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cache error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 63
    iput-object p2, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->b:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getCode()Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->a:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/CacheException;->b:Ljava/lang/String;

    return-object v0
.end method
