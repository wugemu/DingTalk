.class public Lizt;
.super Lizy;
.source "Data.java"


# instance fields
.field public a:[B


# direct methods
.method public constructor <init>(Ljaa;I)V
    .locals 1
    .param p1, "cipher"    # Ljaa;
    .param p2, "version"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lizy;-><init>(Ljaa;I)V

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lizt;->a:[B

    .line 18
    return-void
.end method


# virtual methods
.method public final L_()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lizt;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v1}, Lcom/laiwang/lws/protocol/Attributes;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 85
    iput p1, p0, Lizt;->d:I

    .line 86
    return-void
.end method

.method public final a(II)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "checkSum"    # I

    .prologue
    .line 100
    iput p1, p0, Lizt;->d:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lizt;->e:I

    .line 102
    return-void
.end method

.method public final a([B)V
    .locals 1
    .param p1, "in"    # [B

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lizt;->a([BI)V

    .line 36
    return-void
.end method

.method public final a([BI)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "attCounter"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    iget-object v5, p0, Lizt;->b:Ljaa;

    if-eqz v5, :cond_1

    .line 43
    :try_start_0
    iget-object v5, p0, Lizt;->b:Ljaa;

    invoke-virtual {v5, p1}, Ljaa;->b([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v1, "deData":[B
    :goto_0
    iget-object v5, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v5, v1, p2}, Lcom/laiwang/lws/protocol/Attributes;->a([BI)V

    .line 51
    iget-object v5, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v6, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v5, v6}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v4

    .line 52
    .local v4, "seqCheckSum":[B
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {p0, v4}, Lizt;->d([B)V

    .line 55
    :cond_0
    iget-object v5, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v5}, Lcom/laiwang/lws/protocol/Attributes;->a()I

    move-result v3

    .line 56
    .local v3, "offset":I
    array-length v5, v1

    iget-object v6, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v6}, Lcom/laiwang/lws/protocol/Attributes;->a()I

    move-result v6

    sub-int v0, v5, v6

    .line 57
    .local v0, "available":I
    new-array v5, v0, [B

    iput-object v5, p0, Lizt;->a:[B

    .line 58
    iget-object v5, p0, Lizt;->a:[B

    const/4 v6, 0x0

    invoke-static {v1, v3, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void

    .line 44
    .end local v0    # "available":I
    .end local v1    # "deData":[B
    .end local v3    # "offset":I
    .end local v4    # "seqCheckSum":[B
    :catch_0
    move-exception v2

    .line 45
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 48
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    invoke-static {p1}, Ljab;->a([B)[B

    move-result-object v1

    .restart local v1    # "deData":[B
    goto :goto_0
.end method

.method protected final b([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lizt;->d([B)V

    .line 96
    return-void
.end method

.method public final b()[B
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    iget v3, p0, Lizt;->c:I

    if-lez v3, :cond_0

    .line 64
    iget-object v3, p0, Lizt;->a:[B

    invoke-static {v3}, Ljab;->b([B)I

    move-result v3

    .line 1090
    iput v3, p0, Lizt;->e:I

    .line 65
    iget-object v3, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v4, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {p0}, Lizt;->g()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lizt;->L_()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 68
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lizt;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v3, v1}, Lcom/laiwang/lws/protocol/Attributes;->a(Ljava/nio/ByteBuffer;)V

    .line 69
    iget-object v3, p0, Lizt;->a:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    invoke-static {v1}, Ljab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 72
    .local v0, "buffer":[B
    iget-object v3, p0, Lizt;->b:Ljaa;

    if-eqz v3, :cond_1

    .line 74
    :try_start_0
    iget-object v3, p0, Lizt;->b:Ljaa;

    invoke-virtual {v3, v0}, Ljaa;->a([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 79
    :goto_0
    return-object v3

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 79
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Ljab;->a([BII)[B

    move-result-object v3

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lizt;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lizt;->d:I

    return v0
.end method
