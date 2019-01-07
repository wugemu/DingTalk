.class final Lcom/alibaba/doraemon/impl/request/OutInputStream$3;
.super Ljava/io/BufferedInputStream;
.source "OutInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/OutInputStream;->fromInputStream(Ljava/io/InputStream;J)Lcom/alibaba/doraemon/impl/request/OutInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;ILjava/io/InputStream;J)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I

    .prologue
    .line 69
    iput-object p3, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$stream:Ljava/io/InputStream;

    iput-wide p4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$length:J

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$stream:Ljava/io/InputStream;

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$length:J

    long-to-int v3, v4

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$length:J

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->buf:[B

    array-length p1, v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->buf:[B

    array-length v0, v0

    invoke-super {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->markpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->pos:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->count:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->marklimit:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->markpos:I

    .line 91
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 92
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$stream:Ljava/io/InputStream;

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->val$length:J

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$3;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
