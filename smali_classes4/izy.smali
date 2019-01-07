.class public abstract Lizy;
.super Ljava/lang/Object;
.source "Packet.java"


# instance fields
.field protected b:Ljaa;

.field public c:I

.field protected d:I

.field protected e:I

.field public final f:Lcom/laiwang/lws/protocol/Attributes;


# direct methods
.method public constructor <init>(Ljaa;I)V
    .locals 1
    .param p1, "cipher"    # Ljaa;
    .param p2, "version"    # I

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lizy;->d:I

    .line 13
    iput v0, p0, Lizy;->e:I

    .line 15
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes;

    invoke-direct {v0}, Lcom/laiwang/lws/protocol/Attributes;-><init>()V

    iput-object v0, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    .line 22
    iput-object p1, p0, Lizy;->b:Ljaa;

    .line 23
    iput p2, p0, Lizy;->c:I

    .line 24
    return-void
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    iget-object v1, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v1, v2}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v0

    .line 71
    .local v0, "seqCheckSum":[B
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lizy;->b([B)V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public L_()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v0}, Lcom/laiwang/lws/protocol/Attributes;->a()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 62
    iput p1, p0, Lizy;->d:I

    .line 63
    return-void
.end method

.method public a(II)V
    .locals 5
    .param p1, "seq"    # I
    .param p2, "checkSum"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 90
    iput p1, p0, Lizy;->d:I

    .line 91
    const/4 v1, 0x0

    iput v1, p0, Lizy;->e:I

    .line 93
    :try_start_0
    iget-object v1, p0, Lizy;->b:Ljaa;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    iget-object v3, p0, Lizy;->b:Ljaa;

    invoke-virtual {p0}, Lizy;->g()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljaa;->a([B)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->SEQ_CHECKSUM:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {p0}, Lizy;->g()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([B)V
    .locals 1
    .param p1, "in"    # [B

    .prologue
    .line 44
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lizy;->a([BI)V

    .line 45
    return-void
.end method

.method public a([BI)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "attCount"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/lws/protocol/Attributes;->a([BI)V

    .line 49
    return-void
.end method

.method protected b([B)V
    .locals 2
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lizy;->b:Ljaa;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lizy;->b:Ljaa;

    invoke-virtual {v1, p1}, Ljaa;->b([B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lizy;->d([B)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {p1}, Ljab;->a([B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lizy;->d([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    invoke-virtual {p0}, Lizy;->L_()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lizy;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v1, v0}, Lcom/laiwang/lws/protocol/Attributes;->a(Ljava/nio/ByteBuffer;)V

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 107
    invoke-static {v0}, Ljab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lizy;->e()V

    .line 58
    iget v0, p0, Lizy;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lizy;->e()V

    .line 53
    iget v0, p0, Lizy;->d:I

    return v0
.end method

.method protected final d([B)V
    .locals 2
    .param p1, "bytes"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 132
    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Ljab;->c([BII)I

    move-result v0

    iput v0, p0, Lizy;->d:I

    .line 133
    invoke-static {p1, v1, v1}, Ljab;->c([BII)I

    move-result v0

    iput v0, p0, Lizy;->e:I

    .line 134
    return-void
.end method

.method protected final g()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 124
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 125
    .local v0, "out":Ljava/nio/ByteBuffer;
    iget v1, p0, Lizy;->d:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 126
    iget v1, p0, Lizy;->e:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    invoke-static {v0}, Ljab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method
