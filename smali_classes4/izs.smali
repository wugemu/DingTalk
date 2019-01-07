.class public Lizs;
.super Lizy;
.source "ControlRequest.java"


# direct methods
.method public constructor <init>(Ljaa;I)V
    .locals 0
    .param p1, "cipher"    # Ljaa;
    .param p2, "version"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lizy;-><init>(Ljaa;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 48
    iget-object v2, p0, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v3, Lcom/laiwang/lws/protocol/Attributes$Name;->EXTRA:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B

    move-result-object v0

    .line 49
    .local v0, "deData":[B
    iget-object v2, p0, Lizs;->b:Ljaa;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    iget-object v2, p0, Lizs;->b:Ljaa;

    invoke-virtual {v2, v0}, Ljaa;->b([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :cond_0
    return-object v0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a_([B)V
    .locals 4
    .param p1, "extraData"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lizs;->b:Ljaa;

    if-eqz v1, :cond_1

    .line 38
    :try_start_0
    iget-object v1, p0, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->EXTRA:Lcom/laiwang/lws/protocol/Attributes$Name;

    iget-object v3, p0, Lizs;->b:Ljaa;

    invoke-virtual {v3, p1}, Ljaa;->a([B)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    iget-object v1, p0, Lizs;->f:Lcom/laiwang/lws/protocol/Attributes;

    sget-object v2, Lcom/laiwang/lws/protocol/Attributes$Name;->EXTRA:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v1, v2, p1}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    goto :goto_0
.end method
