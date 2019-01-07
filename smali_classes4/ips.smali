.class public abstract Lips;
.super Ljava/lang/Object;
.source "BaseBioParameterToBioApp.java"


# instance fields
.field final a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/workspace/BioTransfer;)V
    .locals 0
    .param p1, "transfer"    # Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lips;->a:Lcom/alipay/mobile/security/bio/workspace/BioTransfer;

    .line 24
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 39
    .local v2, "uuid":Ljava/util/UUID;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "tagHash":Ljava/lang/String;
    return-object v1
.end method
