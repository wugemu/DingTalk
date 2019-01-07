.class public final Ladf;
.super Ljava/lang/Object;
.source "AvatarMemoryCache.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ladg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ladf;->a:Landroid/util/SparseArray;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "avatarDpSize"    # I
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 44
    iget-object v1, p0, Ladf;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    .line 45
    .local v0, "memoryCache":Ladg;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ladg;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "avatarDpSize"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 24
    iget-object v2, p0, Ladf;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladg;

    .line 25
    .local v0, "memoryCache":Ladg;
    if-nez v0, :cond_1

    .line 26
    iget-object v3, p0, Ladf;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 27
    if-nez v0, :cond_0

    .line 28
    :try_start_0
    new-instance v1, Ladg;

    invoke-direct {v1}, Ladg;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v0    # "memoryCache":Ladg;
    .local v1, "memoryCache":Ladg;
    :try_start_1
    iget-object v2, p0, Ladf;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v0, v1

    .line 31
    .end local v1    # "memoryCache":Ladg;
    .restart local v0    # "memoryCache":Ladg;
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :cond_1
    iget-object v3, p0, Ladf;->a:Landroid/util/SparseArray;

    monitor-enter v3

    .line 35
    :try_start_3
    invoke-virtual {v0, p2, p3}, Ladg;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 36
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 31
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 36
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 31
    .end local v0    # "memoryCache":Ladg;
    .restart local v1    # "memoryCache":Ladg;
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "memoryCache":Ladg;
    .restart local v0    # "memoryCache":Ladg;
    goto :goto_0
.end method
