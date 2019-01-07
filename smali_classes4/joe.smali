.class abstract Ljoe;
.super Ljava/lang/Object;
.source "LruDiskUsage.java"

# interfaces
.implements Ljoa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljoe$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljoe;->a:Ljava/util/concurrent/ExecutorService;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 22
    iget-object v0, p0, Ljoe;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljoe$a;

    invoke-direct {v1, p0, p1}, Ljoe$a;-><init>(Ljoe;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 23
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    .line 1050
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v6, 0x0

    .line 1051
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 1052
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 1053
    goto :goto_0

    .line 35
    .local v6, "totalSize":J
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 36
    .local v3, "totalCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 37
    .local v2, "file":Ljava/io/File;
    invoke-virtual {p0, v6, v7, v3}, Ljoe;->a(JI)Z

    move-result v0

    .line 38
    .local v0, "accepted":Z
    if-nez v0, :cond_1

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 40
    .local v4, "fileSize":J
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 41
    .local v1, "deleted":Z
    if-eqz v1, :cond_1

    .line 42
    add-int/lit8 v3, v3, -0x1

    .line 43
    sub-long/2addr v6, v4

    goto :goto_1

    .line 47
    .end local v0    # "accepted":Z
    .end local v1    # "deleted":Z
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fileSize":J
    :cond_2
    return-void
.end method

.method protected abstract a(JI)Z
.end method
