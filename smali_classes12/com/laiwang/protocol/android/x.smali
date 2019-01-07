.class public Lcom/laiwang/protocol/android/x;
.super Ljava/lang/Object;
.source "ChaCha20Crypto.java"

# interfaces
.implements Lcom/laiwang/protocol/android/an;


# instance fields
.field private a:[B

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "chacha20 key err"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/laiwang/protocol/android/x;->a:[B

    .line 29
    return-void
.end method

.method private a([B)[B
    .locals 3
    .param p1, "nonce"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 68
    const/4 p1, 0x0

    .line 79
    .end local p1    # "nonce":[B
    :cond_0
    :goto_0
    return-object p1

    .line 70
    .restart local p1    # "nonce":[B
    :cond_1
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 71
    aget-byte v2, p1, v0

    and-int/lit16 v1, v2, 0xff

    .line 72
    .local v1, "n":I
    const/16 v2, 0xff

    if-ge v1, v2, :cond_2

    .line 73
    aget-byte v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    goto :goto_0

    .line 76
    :cond_2
    const/4 v2, 0x0

    aput-byte v2, p1, v0

    .line 70
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private d()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->b:[B

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/x;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private e()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->c:[B

    invoke-direct {p0, v0}, Lcom/laiwang/protocol/android/x;->a([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "message"    # Ljava/nio/ByteBuffer;
    .param p2, "encryptTo"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 32
    invoke-direct {p0}, Lcom/laiwang/protocol/android/x;->d()[B

    move-result-object v8

    .line 33
    .local v8, "nonce":[B
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v6

    .line 35
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 36
    .local v2, "encryptLen":[I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v9, p0, Lcom/laiwang/protocol/android/x;->a:[B

    move-object v7, v5

    .line 1433
    invoke-static/range {v0 .. v9}, Lorg/abstractj/kalium/SodiumJNI;->crypto_aead_chacha20poly1305_encrypt([BI[I[BI[BI[B[B[B)I

    .line 38
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    aget v1, v2, v6

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    aget v6, v2, v6

    goto :goto_0
.end method

.method public a()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 43
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->b:[B

    if-nez v0, :cond_0

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/x;->b:[B

    .line 45
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->b:[B

    .line 2033
    invoke-static {v0, v1}, Lorg/abstractj/kalium/SodiumJNI;->randombytes_buf([BI)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->b:[B

    return-object v0
.end method

.method public b(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "message"    # Ljava/nio/ByteBuffer;
    .param p2, "decryptTo"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 83
    invoke-direct {p0}, Lcom/laiwang/protocol/android/x;->e()[B

    move-result-object v8

    .line 84
    .local v8, "nonce":[B
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v7

    .line 86
    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 87
    .local v1, "decryptLen":[I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-object v9, p0, Lcom/laiwang/protocol/android/x;->a:[B

    move-object v6, v2

    .line 3437
    invoke-static/range {v0 .. v9}, Lorg/abstractj/kalium/SodiumJNI;->crypto_aead_chacha20poly1305_decrypt([B[I[B[BII[BI[B[B)I

    .line 89
    aget v7, v1, v7

    goto :goto_0
.end method

.method public b()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 51
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->c:[B

    if-nez v0, :cond_0

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/laiwang/protocol/android/x;->c:[B

    .line 53
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->c:[B

    .line 3033
    invoke-static {v0, v1}, Lorg/abstractj/kalium/SodiumJNI;->randombytes_buf([BI)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/x;->c:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x10

    return v0
.end method
