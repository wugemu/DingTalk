.class public Lcom/alipay/mobile/security/bio/security/RandomHelper;
.super Ljava/lang/Object;
.source "RandomHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static random(I)[B
    .locals 4
    .param p0, "number"    # I

    .prologue
    .line 9
    if-gtz p0, :cond_0

    .line 10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "number can not below zero"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 16
    .local v1, "randomno":Ljava/util/Random;
    new-array v0, p0, [B

    .line 19
    .local v0, "nbyte":[B
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 21
    return-object v0
.end method
