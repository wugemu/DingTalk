.class final Lkp$a;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lkp$a",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkp;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkp;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lkp$a;, "Lkp$a<TV;>;"
    .local p3, "result":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lkp$a;->a:Lkp;

    .line 41
    invoke-direct {p0, p2, p3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Lkp$a;->b:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Lkp;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lkp$a;, "Lkp$a<TV;>;"
    .local p2, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    iput-object p1, p0, Lkp$a;->a:Lkp;

    .line 36
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 37
    iput-object p2, p0, Lkp$a;->b:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    .local p0, "this":Lkp$a;, "Lkp$a<TV;>;"
    check-cast p1, Lkp$a;

    .line 1048
    .end local p1    # "x0":Ljava/lang/Object;
    if-eq p0, p1, :cond_1

    .line 1051
    if-nez p1, :cond_0

    .line 1052
    const/4 v0, -0x1

    .line 1057
    :goto_0
    return v0

    .line 1054
    :cond_0
    iget-object v0, p0, Lkp$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lkp$a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lkp$a;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lkp$a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    iget-object v0, p0, Lkp$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Comparable;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lkp$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p1, Lkp$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 1061
    :cond_1
    const/4 v0, 0x0

    .line 31
    goto :goto_0
.end method
