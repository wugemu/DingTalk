.class public Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;
.super Ljava/io/InputStream;
.source "InputStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;
    }
.end annotation


# static fields
.field private static final ERROR_RESULT_CANCEL:I = -0xff


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

.field private mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/alibaba/doraemon/impl/request/VolleyRequest;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "request"    # Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    .line 38
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 39
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 58
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 77
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
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
    .line 101
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 104
    const/16 v0, -0xff

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 108
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;->onReadCount(I)V

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 122
    const/16 v0, -0xff

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 126
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;->onReadCount(I)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mRequest:Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/VolleyRequest;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 148
    const/16 v0, -0xff

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 151
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;->onReadCount(I)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMonitor(Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mMonitor:Lcom/alibaba/doraemon/impl/request/InputStreamWrapper$InputStreamMonitor;

    .line 43
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/InputStreamWrapper;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
