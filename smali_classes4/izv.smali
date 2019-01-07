.class public Lizv;
.super Lizy;
.source "HelloRequest.java"


# direct methods
.method public constructor <init>(Ljaa;I)V
    .locals 0
    .param p1, "cipher"    # Ljaa;
    .param p2, "version"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lizy;-><init>(Ljaa;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 21
    iget-object v0, p0, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->USER_AGENT:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v0, v1, p1}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public final b()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    invoke-virtual {p0}, Lizv;->L_()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    invoke-virtual {v1, v0}, Lcom/laiwang/lws/protocol/Attributes;->a(Ljava/nio/ByteBuffer;)V

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 96
    invoke-static {v0}, Ljab;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    return-object v1
.end method

.method public final c([B)V
    .locals 5
    .param p1, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lizv;->b:Ljaa;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->KEY:Lcom/laiwang/lws/protocol/Attributes$Name;

    iget-object v3, p0, Lizv;->b:Ljaa;

    .line 1038
    iget-object v3, v3, Ljaa;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lizv;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->KEY:Lcom/laiwang/lws/protocol/Attributes$Name;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Ljab;->a([BII)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
