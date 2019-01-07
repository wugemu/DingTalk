.class Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;
.super Ljava/io/BufferedInputStream;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/cache/CacheImpl;->readFromHuge(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/cache/CacheImpl;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/cache/CacheImpl;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/cache/CacheImpl;
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->this$0:Lcom/alibaba/doraemon/impl/cache/CacheImpl;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->val$key:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->buf:[B

    array-length p1, v0

    .line 121
    :cond_0
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->buf:[B

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->buf:[B

    array-length v0, v0

    invoke-super {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->markpos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->pos:I

    .line 134
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->count:I

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->marklimit:I

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->markpos:I

    .line 137
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->this$0:Lcom/alibaba/doraemon/impl/cache/CacheImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/CacheImpl;->access$000(Lcom/alibaba/doraemon/impl/cache/CacheImpl;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;

    move-result-object v0

    .line 144
    .local v0, "snapshot2":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    if-eqz v0, :cond_1

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/cache/CacheImpl$1;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .end local v0    # "snapshot2":Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Snapshot;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_2
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
