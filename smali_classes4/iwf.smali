.class public final Liwf;
.super Ljava/lang/Object;
.source "CryptorBuilder.java"


# instance fields
.field a:Lcom/dingtalk/cryptokit/Algorithm;

.field b:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Liwe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    iget-object v1, p0, Liwf;->a:Lcom/dingtalk/cryptokit/Algorithm;

    sget-object v2, Lcom/dingtalk/cryptokit/Algorithm;->AES_128_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    if-ne v1, v2, :cond_0

    .line 35
    new-instance v0, Liwi;

    invoke-direct {v0}, Liwi;-><init>()V

    .line 36
    .local v0, "impl":Liwi;
    iget-object v1, p0, Liwf;->b:[B

    invoke-virtual {v0, v1}, Liwi;->c([B)V

    .line 41
    .end local v0    # "impl":Liwi;
    :goto_0
    return-object v0

    .line 38
    :cond_0
    iget-object v1, p0, Liwf;->a:Lcom/dingtalk/cryptokit/Algorithm;

    sget-object v2, Lcom/dingtalk/cryptokit/Algorithm;->AES_256_CBC:Lcom/dingtalk/cryptokit/Algorithm;

    if-ne v1, v2, :cond_1

    .line 39
    new-instance v0, Liwj;

    invoke-direct {v0}, Liwj;-><init>()V

    .line 40
    .local v0, "impl":Liwj;
    iget-object v1, p0, Liwf;->b:[B

    invoke-virtual {v0, v1}, Liwj;->c([B)V

    goto :goto_0

    .line 43
    .end local v0    # "impl":Liwj;
    :cond_1
    new-instance v1, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;

    invoke-direct {v1}, Lcom/dingtalk/cryptokit/UnimplementAlgorithmException;-><init>()V

    throw v1
.end method
