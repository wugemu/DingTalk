.class final Ljkz$a;
.super Ljava/lang/Object;
.source "ChocolateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljkz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    const/4 v0, 0x5

    iput v0, p0, Ljkz$a;->b:I

    .line 1509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljkz$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1515
    iget-object v3, p0, Ljkz$a;->a:Ljava/util/List;

    monitor-enter v3

    .line 1516
    :try_start_0
    iget-object v2, p0, Ljkz$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1517
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1518
    iget-object v2, p0, Ljkz$a;->a:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1519
    .local v1, "tmp":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Ljkz$a;->a:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1520
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1521
    monitor-exit v3

    .line 1523
    .end local v1    # "tmp":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v1

    :cond_0
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    monitor-exit v3

    goto :goto_0

    .line 1525
    .end local v0    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1533
    if-nez p1, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1535
    :cond_0
    iget-object v1, p0, Ljkz$a;->a:Ljava/util/List;

    monitor-enter v1

    .line 1536
    :try_start_0
    iget-object v0, p0, Ljkz$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 1537
    iget-object v0, p0, Ljkz$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1539
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
