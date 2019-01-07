.class public final Lljf;
.super Lljj;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljj",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 118
    .local p0, "this":Lljf;, "Lljf<TE;>;"
    invoke-direct {p0, p1}, Lljj;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 217
    .line 10069
    .local p0, "this":Lljf;, "Lljf<TE;>;"
    iget-wide v0, p0, Lljg;->consumerIndex:J

    .line 11038
    iget-wide v2, p0, Lljl;->producerIndex:J

    .line 217
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 123
    .local p0, "this":Lljf;, "Lljf<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 124
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "Null is not a valid element"

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_0
    iget-object v4, p0, Lljf;->c:[Ljava/lang/Object;

    .line 127
    .local v4, "lb":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lljf;->b:J

    .line 1038
    .local v2, "lMask":J
    iget-wide v0, p0, Lljl;->producerIndex:J

    .line 129
    .local v0, "currProducerIndex":J
    invoke-virtual {p0, v0, v1}, Lljf;->a(J)J

    move-result-wide v6

    .line 130
    .local v6, "offset":J
    invoke-static {v4, v6, v7}, Lljf;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1069
    iget-wide v10, p0, Lljg;->consumerIndex:J

    .line 131
    sub-long v8, v0, v10

    .line 133
    .local v8, "size":J
    cmp-long v5, v8, v2

    if-lez v5, :cond_1

    .line 134
    const/4 v5, 0x0

    .line 145
    .end local v8    # "size":J
    :goto_0
    return v5

    .line 138
    .restart local v8    # "size":J
    :cond_1
    invoke-static {v4, v6, v7}, Lljf;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1110
    .end local v8    # "size":J
    :cond_2
    sget-object v5, Llkb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v5, v4, v6, v7, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 144
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    invoke-virtual {p0, v10, v11}, Lljf;->c(J)V

    .line 145
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 177
    .line 5097
    .local p0, "this":Lljf;, "Lljf<TE;>;"
    iget-wide v2, p0, Lljm;->f:J

    .line 6069
    .local v2, "currProducerIndexCache":J
    :cond_0
    iget-wide v4, p0, Lljg;->consumerIndex:J

    .line 181
    .local v4, "currentConsumerIndex":J
    cmp-long v7, v4, v2

    if-ltz v7, :cond_2

    .line 7038
    iget-wide v0, p0, Lljl;->producerIndex:J

    .line 183
    .local v0, "currProducerIndex":J
    cmp-long v7, v4, v0

    if-ltz v7, :cond_1

    .line 184
    const/4 v6, 0x0

    .line 190
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 7101
    .restart local v0    # "currProducerIndex":J
    :cond_1
    iput-wide v0, p0, Lljm;->f:J

    .line 189
    .end local v0    # "currProducerIndex":J
    :cond_2
    invoke-virtual {p0, v4, v5}, Lljf;->a(J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lljf;->b(J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lljf;, "Lljf<TE;>;"
    const/4 v10, 0x0

    .line 151
    .line 2097
    iget-wide v2, p0, Lljm;->f:J

    .line 3069
    .local v2, "currProducerIndexCache":J
    :cond_0
    iget-wide v4, p0, Lljg;->consumerIndex:J

    .line 154
    .local v4, "currentConsumerIndex":J
    cmp-long v11, v4, v2

    if-ltz v11, :cond_2

    .line 4038
    iget-wide v0, p0, Lljl;->producerIndex:J

    .line 156
    .local v0, "currProducerIndex":J
    cmp-long v11, v4, v0

    if-ltz v11, :cond_1

    move-object v6, v10

    .line 171
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 4101
    .restart local v0    # "currProducerIndex":J
    :cond_1
    iput-wide v0, p0, Lljm;->f:J

    .line 162
    .end local v0    # "currProducerIndex":J
    :cond_2
    const-wide/16 v12, 0x1

    add-long/2addr v12, v4

    invoke-virtual {p0, v4, v5, v12, v13}, Lljf;->a(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 165
    invoke-virtual {p0, v4, v5}, Lljf;->a(J)J

    move-result-wide v8

    .line 166
    .local v8, "offset":J
    iget-object v7, p0, Lljf;->c:[Ljava/lang/Object;

    .line 4153
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    sget-object v11, Llkb;->a:Lsun/misc/Unsafe;

    invoke-virtual {v11, v7, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 170
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v7, v8, v9, v10}, Lljf;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public final size()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    .line 8069
    .local p0, "this":Lljf;, "Lljf<TE;>;"
    iget-wide v0, p0, Lljg;->consumerIndex:J

    .line 202
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 9038
    .local v2, "before":J
    iget-wide v4, p0, Lljl;->producerIndex:J

    .line 9069
    .local v4, "currentProducerIndex":J
    iget-wide v0, p0, Lljg;->consumerIndex:J

    .line 205
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 206
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
