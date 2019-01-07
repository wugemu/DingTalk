.class Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;
.super Ljava/io/BufferedInputStream;
.source "OutInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->clone()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->this$0:Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;

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
    .line 289
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->buf:[B

    array-length p1, v0

    .line 293
    :cond_0
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->buf:[B

    array-length v0, v0

    invoke-super {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->markpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->pos:I

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->count:I

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->marklimit:I

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->markpos:I

    .line 307
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 308
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->this$0:Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->access$000(Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
