.class Lcom/squareup/okhttp/internal/FaultHidingSink;
.super Lokio/ForwardingSink;
.source "FaultHidingSink.java"


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 0
    .param p1, "delegate"    # Lokio/Sink;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
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
    .line 40
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public flush()V
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
    .line 30
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 35
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 50
    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .locals 2
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    .line 27
    :goto_0
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/FaultHidingSink;->hasErrors:Z

    .line 25
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method
