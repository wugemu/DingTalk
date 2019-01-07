.class public Lcom/laiwang/protocol/android/ap;
.super Ljava/lang/Object;
.source "MemoryPool.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/android/ap;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static declared-synchronized a(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "len"    # I

    .prologue
    .line 29
    const-class v3, Lcom/laiwang/protocol/android/ap;

    monitor-enter v3

    const/16 v2, 0x1004

    if-le p0, v2, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 44
    :goto_0
    monitor-exit v3

    return-object v2

    .line 31
    :cond_0
    const/16 v1, 0x100

    .line 32
    .local v1, "bufferSize":I
    const/16 v2, 0x800

    if-le p0, v2, :cond_3

    .line 33
    const/16 v1, 0x1004

    .line 39
    :cond_1
    :goto_1
    :try_start_0
    sget-object v2, Lcom/laiwang/protocol/android/ap;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 40
    .local v0, "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 41
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 34
    .end local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_3
    const/16 v2, 0x400

    if-le p0, v2, :cond_4

    .line 35
    const/16 v1, 0x800

    goto :goto_1

    .line 36
    :cond_4
    const/16 v2, 0x100

    if-le p0, v2, :cond_1

    .line 37
    const/16 v1, 0x400

    goto :goto_1

    .line 44
    .restart local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    .end local v0    # "bufferArray":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
