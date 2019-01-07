.class final Lod;
.super Ljava/lang/Object;
.source "VectorEnumerator.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field a:Loc;

.field b:I


# direct methods
.method constructor <init>(Loc;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lod;->a:Loc;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lod;->b:I

    .line 25
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    iget-object v1, p0, Lod;->a:Loc;

    monitor-enter v1

    .line 29
    :try_start_0
    iget v0, p0, Lod;->b:I

    iget-object v2, p0, Lod;->a:Loc;

    iget v2, v2, Loc;->b:I

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    iget-object v1, p0, Lod;->a:Loc;

    monitor-enter v1

    .line 35
    :try_start_0
    iget v0, p0, Lod;->b:I

    iget-object v2, p0, Lod;->a:Loc;

    iget v2, v2, Loc;->b:I

    if-gt v0, v2, :cond_0

    .line 36
    iget-object v0, p0, Lod;->a:Loc;

    iget-object v0, v0, Loc;->a:[Ljava/lang/Object;

    iget v2, p0, Lod;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lod;->b:I

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v2, "VectorEnumerator"

    invoke-direct {v0, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
