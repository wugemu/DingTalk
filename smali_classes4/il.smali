.class public final Lil;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lil$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lik;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lik;

.field private final c:Ljava/util/Random;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lil;->a:Ljava/util/TreeSet;

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lik;->a(I)Lik;

    move-result-object v0

    iput-object v0, p0, Lil;->b:Lik;

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lil;->c:Ljava/util/Random;

    .line 20
    iput-wide v2, p0, Lil;->d:J

    .line 21
    iput-wide v2, p0, Lil;->e:J

    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Lik;
    .locals 8
    .param p1, "length"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 54
    monitor-enter p0

    const/high16 v1, 0x80000

    if-lt p1, v1, :cond_1

    .line 55
    :try_start_0
    invoke-static {p1}, Lik;->a(I)Lik;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    iget-object v1, p0, Lil;->b:Lik;

    iput p1, v1, Lik;->b:I

    .line 58
    iget-object v1, p0, Lil;->a:Ljava/util/TreeSet;

    iget-object v2, p0, Lil;->b:Lik;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 59
    .local v0, "ret":Lik;
    if-nez v0, :cond_2

    .line 60
    invoke-static {p1}, Lik;->a(I)Lik;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, v0, Lik;->a:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 63
    const/4 v1, 0x0

    iput v1, v0, Lik;->c:I

    .line 64
    iget-object v1, p0, Lil;->a:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-wide v2, p0, Lil;->d:J

    iget v1, v0, Lik;->b:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lil;->d:J

    .line 66
    iget-wide v2, p0, Lil;->e:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lil;->e:J

    .line 67
    const/4 v1, 0x1

    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "awcn.ByteArrayPool"

    const-string/jumbo v2, "ByteArray Pool retrieve"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "retrieve"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "reused"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lil;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "ret":Lik;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Lik;)V
    .locals 8
    .param p1, "byteArray"    # Lik;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 32
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p1, Lik;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x80000

    if-lt v1, v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lil;->d:J

    iget v1, p1, Lik;->b:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lil;->d:J

    .line 37
    iget-object v1, p0, Lil;->a:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    iget-wide v2, p0, Lil;->d:J

    const-wide/32 v4, 0x80000

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 40
    iget-object v1, p0, Lil;->c:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lil;->a:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .line 45
    .local v0, "deletedItem":Lik;
    :goto_2
    iget-wide v2, p0, Lil;->d:J

    iget v1, v0, Lik;->b:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lil;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 32
    .end local v0    # "deletedItem":Lik;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 43
    :cond_2
    :try_start_2
    iget-object v1, p0, Lil;->a:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lik;

    .restart local v0    # "deletedItem":Lik;
    goto :goto_2

    .line 48
    .end local v0    # "deletedItem":Lik;
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string/jumbo v1, "awcn.ByteArrayPool"

    const-string/jumbo v2, "ByteArray Pool refund"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "refund"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1046
    iget v6, p1, Lik;->b:I

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "total"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v6, p0, Lil;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
