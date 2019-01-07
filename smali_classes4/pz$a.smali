.class final Lpz$a;
.super Ljava/lang/Object;
.source "SingleThreadBlockQueue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lpz$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Luv;

.field public c:Ljava/lang/String;

.field d:Z

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lpz;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lpz$a;->e:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    check-cast p1, Lpz$a;

    .line 1117
    iget-boolean v0, p1, Lpz$a;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lpz$a;->d:Z

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x1

    .line 1120
    :goto_0
    return v0

    .line 1119
    :cond_0
    iget-boolean v0, p1, Lpz$a;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lpz$a;->d:Z

    if-eqz v0, :cond_1

    .line 1120
    const/4 v0, -0x1

    goto :goto_0

    .line 1122
    :cond_1
    iget v0, p0, Lpz$a;->e:I

    iget v1, p1, Lpz$a;->e:I

    sub-int/2addr v0, v1

    .line 104
    goto :goto_0
.end method
