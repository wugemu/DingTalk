.class public Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;
.super Ljava/lang/Object;
.source "UTBaseRequestAuthentication.java"

# interfaces
.implements Lcom/ut/mini/core/sign/IUTRequestAuthentication;


# instance fields
.field private mAppSecret:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mDefaultAppAppSecret:[B

.field private mEncode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    .line 25
    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    .line 44
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "aAppkey"    # Ljava/lang/String;
    .param p2, "aAppSecret"    # Ljava/lang/String;
    .param p3, "isEncode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    .line 25
    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    .line 57
    iput-object p1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    .line 60
    return-void
.end method

.method public static calcHmac([B[B)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # [B
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    const-string/jumbo v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 105
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 106
    .local v2, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 107
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 108
    .local v1, "result":[B
    invoke-static {v1}, Lamv;->a([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDefaultAppAppSecret()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    if-nez v1, :cond_0

    .line 92
    const/16 v1, 0x20

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 95
    .local v0, "newkey":[B
    invoke-static {v0}, Lanb;->a([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    .line 97
    .end local v0    # "newkey":[B
    :cond_0
    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mDefaultAppAppSecret:[B

    return-object v1

    .line 92
    nop

    :array_0
    .array-data 1
        0x42t
        0x25t
        0x2at
        -0x77t
        0x76t
        -0x68t
        -0x1et
        0x4t
        -0x5ft
        0xft
        -0x1at
        -0xct
        -0x4bt
        -0x66t
        0x47t
        0x17t
        -0x3t
        -0x78t
        -0x1t
        -0x39t
        0x2at
        0x63t
        -0x10t
        -0x65t
        0x67t
        -0x4at
        0x5dt
        -0x72t
        0x70t
        -0x1at
        -0x18t
        -0x18t
    .end array-data
.end method


# virtual methods
.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "toBeSignedStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppkey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 69
    :cond_0
    const-string/jumbo v1, "UTBaseRequestAuthentication"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "There is no appkey,please check it!"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_1
    :goto_0
    return-object v0

    .line 73
    :cond_2
    if-eqz p1, :cond_1

    .line 77
    const-string/jumbo v0, ""

    .line 79
    .local v0, "lHex2":Ljava/lang/String;
    :try_start_0
    iget-boolean v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->calcHmac([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->getDefaultAppAppSecret()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->calcHmac([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isEncode()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->mEncode:Z

    return v0
.end method
