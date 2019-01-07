.class public final Lhco;
.super Ljava/io/BufferedInputStream;
.source "BufferInputStream.java"


# instance fields
.field public a:J

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-object p2, p0, Lhco;->b:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lhco;->a:J

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 50
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lhco;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lhco;->buf:[B

    array-length p1, v0

    .line 72
    :cond_0
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_1
    iget-object v0, p0, Lhco;->buf:[B

    array-length v0, v0

    invoke-super {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lhco;->markpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lhco;->pos:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lhco;->count:I

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lhco;->marklimit:I

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lhco;->markpos:I

    .line 107
    iget-object v0, p0, Lhco;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 108
    iget-object v0, p0, Lhco;->b:Ljava/lang/String;

    invoke-static {v0}, Lhco;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lhco;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
