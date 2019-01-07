.class final Lgth$a;
.super Ljava/io/ByteArrayOutputStream;
.source "HttpOverLWPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgth$a;->a:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgth$a;->count:I

    add-int/2addr v0, p3

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgth$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
