.class public Lcom/laiwang/lws/protocol/LwsSession;
.super Ljava/lang/Object;
.source "LwsSession.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aesKey:[B

.field private expire:I

.field private expireTime:J

.field private id:[B

.field private version:I


# direct methods
.method public constructor <init>([B[BII)V
    .locals 2
    .param p1, "id"    # [B
    .param p2, "aesKey"    # [B
    .param p3, "expire"    # I
    .param p4, "version"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x78

    iput v0, p0, Lcom/laiwang/lws/protocol/LwsSession;->expire:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/laiwang/lws/protocol/LwsSession;->expireTime:J

    .line 17
    iput-object p1, p0, Lcom/laiwang/lws/protocol/LwsSession;->id:[B

    .line 18
    iput-object p2, p0, Lcom/laiwang/lws/protocol/LwsSession;->aesKey:[B

    .line 19
    iput p3, p0, Lcom/laiwang/lws/protocol/LwsSession;->expire:I

    .line 20
    iput p4, p0, Lcom/laiwang/lws/protocol/LwsSession;->version:I

    .line 21
    return-void
.end method


# virtual methods
.method public getAesKey()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/lws/protocol/LwsSession;->aesKey:[B

    return-object v0
.end method

.method public getExpire()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/laiwang/lws/protocol/LwsSession;->expire:I

    return v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/laiwang/lws/protocol/LwsSession;->id:[B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/laiwang/lws/protocol/LwsSession;->version:I

    return v0
.end method

.method public isExpire()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, "now":J
    iget-wide v2, p0, Lcom/laiwang/lws/protocol/LwsSession;->expireTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/laiwang/lws/protocol/LwsSession;->expireTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 47
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public touchExpire()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    .local v0, "now":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/laiwang/lws/protocol/LwsSession;->expire:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/laiwang/lws/protocol/LwsSession;->expireTime:J

    .line 42
    return-void
.end method
