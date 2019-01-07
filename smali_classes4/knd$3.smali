.class final Lknd$3;
.super Lknd;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lknd;->create(Lkmy;Ljava/io/File;)Lknd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkmy;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lkmy;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lknd$3;->a:Lkmy;

    iput-object p2, p0, Lknd$3;->b:Ljava/io/File;

    invoke-direct {p0}, Lknd;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lknd$3;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lkmy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lknd$3;->a:Lkmy;

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "source":Lokio/Source;
    :try_start_0
    iget-object v1, p0, Lknd$3;->b:Ljava/io/File;

    invoke-static {v1}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v0

    .line 120
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v0}, Lknj;->a(Ljava/io/Closeable;)V

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lknj;->a(Ljava/io/Closeable;)V

    throw v1
.end method
