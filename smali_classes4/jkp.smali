.class public final Ljkp;
.super Ljava/lang/Object;
.source "VideoBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljkp$a;
    }
.end annotation


# instance fields
.field a:[Ljkp$a;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v3, p0, Ljkp;->b:I

    .line 36
    iput v4, p0, Ljkp;->c:I

    .line 40
    iget-object v1, p0, Ljkp;->a:[Ljkp$a;

    if-nez v1, :cond_0

    .line 41
    new-array v1, v3, [Ljkp$a;

    iput-object v1, p0, Ljkp;->a:[Ljkp$a;

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 43
    iget-object v1, p0, Ljkp;->a:[Ljkp$a;

    new-instance v2, Ljkp$a;

    invoke-direct {v2, p0, p1, p2}, Ljkp$a;-><init>(Ljkp;II)V

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    iput v4, p0, Ljkp;->c:I

    .line 48
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljkp$a;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljkp;->a:[Ljkp$a;

    iget v2, p0, Ljkp;->c:I

    aget-object v1, v1, v2

    iget-wide v2, v1, Ljkp$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 80
    :goto_0
    monitor-exit p0

    return-object v1

    .line 78
    :cond_0
    :try_start_1
    iget v0, p0, Ljkp;->c:I

    .line 79
    .local v0, "n":I
    iget v1, p0, Ljkp;->c:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    iput v1, p0, Ljkp;->c:I

    .line 80
    iget-object v1, p0, Ljkp;->a:[Ljkp$a;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a([B)V
    .locals 4
    .param p1, "frame"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ljkp;->a:[Ljkp$a;

    iget v2, p0, Ljkp;->c:I

    aget-object v1, v1, v2

    iget-object v1, v1, Ljkp$a;->a:[B

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v0, p0, Ljkp;->a:[Ljkp$a;

    iget v1, p0, Ljkp;->c:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ljkp$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
