.class public Lcom/laiwang/protocol/android/z;
.super Ljava/lang/Object;
.source "ECDHKeyExchange.java"


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/z;->a:[B

    .line 13
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/z;->b:[B

    .line 18
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->a:[B

    .line 1033
    invoke-static {v0, v1}, Lorg/abstractj/kalium/SodiumJNI;->randombytes_buf([BI)V

    .line 21
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->b:[B

    iget-object v1, p0, Lcom/laiwang/protocol/android/z;->a:[B

    .line 1101
    invoke-static {v0, v1}, Lorg/abstractj/kalium/SodiumJNI;->crypto_scalarmult_base([B[B)I

    .line 23
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->b:[B

    return-object v0
.end method

.method public a([B)[B
    .locals 2
    .param p1, "serPubKey"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->c:[B

    if-nez v0, :cond_0

    .line 31
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/z;->c:[B

    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->c:[B

    iget-object v1, p0, Lcom/laiwang/protocol/android/z;->a:[B

    .line 1105
    invoke-static {v0, v1, p1}, Lorg/abstractj/kalium/SodiumJNI;->crypto_scalarmult([B[B[B)I

    .line 35
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->c:[B

    :goto_0
    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/z;->c:[B

    goto :goto_0
.end method
