.class Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;
.super Lokio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/squareup/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Lokio/Sink;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/squareup/okhttp/Cache$CacheRequestImpl;
    .param p2, "x0"    # Lokio/Sink;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->val$this$0:Lcom/squareup/okhttp/Cache;

    iput-object p4, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
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
    .line 413
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iget-object v1, v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->access$700(Lcom/squareup/okhttp/Cache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->access$702(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Z)Z

    .line 418
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->access$808(Lcom/squareup/okhttp/Cache;)I

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-super {p0}, Lokio/ForwardingSink;->close()V

    .line 421
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
