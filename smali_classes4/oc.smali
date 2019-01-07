.class public final Loc;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected a:[Ljava/lang/Object;

.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Loc;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Loc;->b:I

    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Loc;->a:[Ljava/lang/Object;

    .line 25
    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    :try_start_0
    iget-object v1, p0, Loc;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Loc;->a:[Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Loc;->a:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 77
    add-int/lit8 v2, p1, 0x1

    if-le v2, v0, :cond_0

    .line 78
    add-int/lit8 v0, p1, 0x1

    .line 80
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Loc;->a:[Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iget-object v2, p0, Loc;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget v0, p0, Loc;->b:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Loc;->a(I)V

    .line 29
    iget-object v0, p0, Loc;->a:[Ljava/lang/Object;

    iget v1, p0, Loc;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loc;->b:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loc;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    iget v1, p0, Loc;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Loc;->a:[Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Loc;->a:[Ljava/lang/Object;

    iget-object v2, v0, Loc;->a:[Ljava/lang/Object;

    .line 2119
    iget v3, p0, Loc;->b:I

    add-int/lit8 v3, v3, 0x1

    .line 49
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "cannot clone Vector.super"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method
