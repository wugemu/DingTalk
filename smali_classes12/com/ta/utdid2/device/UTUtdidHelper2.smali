.class public Lcom/ta/utdid2/device/UTUtdidHelper2;
.super Ljava/lang/Object;
.source "UTUtdidHelper2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dePack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pUtdidWithBase64"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "lEResult":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lcom/ta/utdid2/android/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 28
    .local v1, "lUtdidByte":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "lUtdidByte":[B
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 33
    goto :goto_0
.end method
