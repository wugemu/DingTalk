.class public final Llib$b;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:[Llib$c;

.field c:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;I)V
    .locals 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "maxThreads"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Llib$b;->a:I

    .line 68
    new-array v1, p2, [Llib$c;

    iput-object v1, p0, Llib$b;->b:[Llib$c;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 70
    iget-object v1, p0, Llib$b;->b:[Llib$c;

    new-instance v2, Llib$c;

    invoke-direct {v2, p1}, Llib$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Llib$c;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget v0, p0, Llib$b;->a:I

    .line 76
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 77
    sget-object v1, Llib;->b:Llib$c;

    .line 80
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Llib$b;->b:[Llib$c;

    iget-wide v2, p0, Llib$b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Llib$b;->c:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    iget-object v2, p0, Llib$b;->b:[Llib$c;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 85
    .local v0, "w":Llib$c;
    invoke-virtual {v0}, Llib$c;->unsubscribe()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "w":Llib$c;
    :cond_0
    return-void
.end method
