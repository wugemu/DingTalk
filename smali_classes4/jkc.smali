.class public final Ljkc;
.super Ljava/lang/Object;
.source "ArtcWaiter.java"


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:[Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array v1, v3, [Ljava/lang/Object;

    iput-object v1, p0, Ljkc;->a:[Ljava/lang/Object;

    .line 13
    new-array v1, v3, [Z

    iput-object v1, p0, Ljkc;->b:[Z

    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 18
    iget-object v1, p0, Ljkc;->a:[Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v1, v0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "event"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Ljkc;->a:[Ljava/lang/Object;

    aget-object v1, v0, v1

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Ljkc;->b:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 55
    iget-object v0, p0, Ljkc;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 56
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
