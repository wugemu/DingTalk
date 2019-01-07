.class public Lizw;
.super Lizy;
.source "HelloResponse.java"


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
.method public final e()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lizw;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v3, Lcom/laiwang/lws/protocol/Attributes$Name;->SIGN:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v1

    .line 52
    .local v1, "signed":[B
    iget-object v2, p0, Lizw;->b:Ljaa;

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lizw;->b:Ljaa;

    invoke-virtual {v2, v1}, Ljaa;->b([B)[B

    move-result-object v2

    .line 55
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Ljab;->a([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 56
    .end local v1    # "signed":[B
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final f()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    :try_start_0
    iget-object v2, p0, Lizw;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v3, Lcom/laiwang/lws/protocol/Attributes$Name;->SESSION_ID:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v1

    .line 76
    .local v1, "sid":[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 77
    :cond_0
    const/4 v2, 0x0

    .line 82
    :goto_0
    return-object v2

    .line 79
    :cond_1
    iget-object v2, p0, Lizw;->b:Ljaa;

    if-eqz v2, :cond_2

    .line 80
    iget-object v2, p0, Lizw;->b:Ljaa;

    invoke-virtual {v2, v1}, Ljaa;->b([B)[B

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v1}, Ljab;->a([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 83
    .end local v1    # "sid":[B
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
