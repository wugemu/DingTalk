.class public final Lljn;
.super Lljs;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljs",
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
    .line 98
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    invoke-direct {p0, p1}, Lljs;-><init>(I)V

    .line 99
    return-void
.end method

.method private a()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljn;->f:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 189
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljn;->e:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 173
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    invoke-direct {p0}, Lljn;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lljn;->b()J

    move-result-wide v2

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
    .line 108
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null elements not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v8, p0, Lljn;->c:[Ljava/lang/Object;

    .line 113
    .local v8, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v6, p0, Lljn;->producerIndex:J

    .line 114
    .local v6, "index":J
    invoke-virtual {p0, v6, v7}, Lljn;->a(J)J

    move-result-wide v10

    .line 115
    .local v10, "offset":J
    invoke-static {v8, v10, v11}, Lljn;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-static {v8, v10, v11, p1}, Lljn;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 119
    const-wide/16 v0, 0x1

    add-long v4, v6, v0

    .line 1177
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljn;->f:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    iget-wide v0, p0, Lljn;->consumerIndex:J

    invoke-virtual {p0, v0, v1}, Lljn;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lljn;->b(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    const/4 v0, 0x0

    .line 130
    iget-wide v8, p0, Lljn;->consumerIndex:J

    .line 131
    .local v8, "index":J
    invoke-virtual {p0, v8, v9}, Lljn;->a(J)J

    move-result-wide v10

    .line 133
    .local v10, "offset":J
    iget-object v7, p0, Lljn;->c:[Ljava/lang/Object;

    .line 134
    .local v7, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-static {v7, v10, v11}, Lljn;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 135
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    move-object v6, v0

    .line 140
    .end local v6    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v6

    .line 138
    .restart local v6    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-static {v7, v10, v11, v0}, Lljn;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 139
    const-wide/16 v0, 0x1

    add-long v4, v8, v0

    .line 1181
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljn;->e:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    goto :goto_0
.end method

.method public final size()I
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 160
    .local p0, "this":Lljn;, "Lljn<TE;>;"
    invoke-direct {p0}, Lljn;->b()J

    move-result-wide v0

    .line 162
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 163
    .local v2, "before":J
    invoke-direct {p0}, Lljn;->a()J

    move-result-wide v4

    .line 164
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lljn;->b()J

    move-result-wide v0

    .line 165
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 166
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
