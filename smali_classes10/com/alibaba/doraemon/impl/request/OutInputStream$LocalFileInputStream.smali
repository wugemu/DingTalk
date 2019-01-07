.class Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;
.super Lcom/alibaba/doraemon/impl/request/OutInputStream;
.source "OutInputStream.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/OutInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalFileInputStream"
.end annotation


# instance fields
.field private final file:Ljava/io/File;

.field private fileInputStream:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->file:Ljava/io/File;

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->fileInputStream:Ljava/io/FileInputStream;

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->createLocalFileInputStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->file:Ljava/io/File;

    return-object v0
.end method

.method private createLocalFileInputStream()V
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
    .line 322
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mInputStream:Ljava/io/InputStream;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mLength:I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->fileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mLength:I

    .line 334
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->fileInputStream:Ljava/io/FileInputStream;

    .line 335
    new-instance v0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$2;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->fileInputStream:Ljava/io/FileInputStream;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$2;-><init>(Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mInputStream:Ljava/io/InputStream;

    .line 364
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, "inStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p0, v3}, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream$1;-><init>(Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "inStream":Ljava/io/InputStream;
    .local v2, "inStream":Ljava/io/InputStream;
    move-object v1, v2

    .line 317
    .end local v2    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "inStream":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 278
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->fileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 279
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/OutInputStream$LocalFileInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
