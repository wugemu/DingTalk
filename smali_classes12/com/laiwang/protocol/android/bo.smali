.class public Lcom/laiwang/protocol/android/bo;
.super Ljava/lang/Object;
.source "Vip.java"


# instance fields
.field private a:Ljava/net/URI;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/net/URI;J)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "expiredAt"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/laiwang/protocol/android/bo;->a:Ljava/net/URI;

    .line 17
    iput-wide p2, p0, Lcom/laiwang/protocol/android/bo;->b:J

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laiwang/protocol/android/bo;->a:Ljava/net/URI;

    return-object v0
.end method

.method public b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/laiwang/protocol/android/bo;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 33
    :goto_0
    return v1

    .line 31
    :cond_0
    instance-of v1, p1, Lcom/laiwang/protocol/android/bo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 32
    check-cast v0, Lcom/laiwang/protocol/android/bo;

    .line 33
    .local v0, "vip":Lcom/laiwang/protocol/android/bo;
    iget-object v1, p0, Lcom/laiwang/protocol/android/bo;->a:Ljava/net/URI;

    iget-object v2, v0, Lcom/laiwang/protocol/android/bo;->a:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/laiwang/protocol/android/bo;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Vip{uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/android/bo;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", expiredAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/laiwang/protocol/android/bo;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
