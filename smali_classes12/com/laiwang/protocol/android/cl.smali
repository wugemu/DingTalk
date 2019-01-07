.class public Lcom/laiwang/protocol/android/cl;
.super Ljava/lang/Object;
.source "SignUtil.java"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/android/cl;->a:[C

    return-void
.end method

.method private static a([BI)V
    .locals 2
    .param p0, "str"    # [B
    .param p1, "len"    # I

    .prologue
    .line 62
    array-length v0, p0

    if-eq v0, p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Illegal signature length."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method public static a([B[B[B)Z
    .locals 6
    .param p0, "message"    # [B
    .param p1, "signature"    # [B
    .param p2, "key"    # [B

    .prologue
    const/4 v4, 0x1

    .line 46
    const/16 v5, 0x40

    invoke-static {p1, v5}, Lcom/laiwang/protocol/android/cl;->a([BI)V

    .line 47
    invoke-static {p1, p0}, Lcom/laiwang/protocol/android/cl;->a([B[B)[B

    move-result-object v3

    .line 48
    .local v3, "sigAndMsg":[B
    array-length v5, v3

    new-array v0, v5, [B

    .line 49
    .local v0, "buffer":[B
    new-array v1, v4, [I

    .line 50
    .local v1, "bufferLen":[I
    array-length v5, v3

    .line 1909
    invoke-static {v0, v1, v3, v5, p2}, Lorg/abstractj/kalium/SodiumJNI;->crypto_sign_ed25519_open([B[I[BI[B)I

    move-result v2

    .line 51
    .local v2, "ret":I
    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 4
    .param p0, "byte1"    # [B
    .param p1, "byte2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 55
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 56
    .local v0, "merged":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object v0
.end method
