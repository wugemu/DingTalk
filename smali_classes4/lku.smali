.class public final Llku;
.super Ljava/lang/Object;
.source "Timestamped.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 1
    .param p1, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Llku;, "Llku<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p0, Llku;->b:Ljava/lang/Object;

    .line 28
    iput-wide p1, p0, Llku;->a:J

    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Llku;, "Llku<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    instance-of v3, p1, Llku;

    if-nez v3, :cond_3

    move v1, v2

    .line 58
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 60
    check-cast v0, Llku;

    .line 61
    .local v0, "other":Llku;, "Llku<*>;"
    iget-wide v4, p0, Llku;->a:J

    iget-wide v6, v0, Llku;->a:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Llku;->b:Ljava/lang/Object;

    iget-object v4, v0, Llku;->b:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Llku;->b:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget-object v3, p0, Llku;->b:Ljava/lang/Object;

    iget-object v4, v0, Llku;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    .local p0, "this":Llku;, "Llku<TT;>;"
    iget-wide v2, p0, Llku;->a:J

    iget-wide v4, p0, Llku;->a:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit8 v0, v1, 0x1f

    .line 69
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Llku;->b:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 70
    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Llku;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    .local p0, "this":Llku;, "Llku<TT;>;"
    const-string/jumbo v0, "Timestamped(timestampMillis = %d, value = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Llku;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Llku;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
