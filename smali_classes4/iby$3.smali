.class final Liby$3;
.super Ljava/lang/Object;
.source "MessageReadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liby;


# direct methods
.method constructor <init>(Liby;)V
    .locals 0
    .param p1, "this$0"    # Liby;

    .prologue
    .line 101
    iput-object p1, p0, Liby$3;->a:Liby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Liby$3;->a:Liby;

    .line 1030
    iget-object v0, v0, Liby;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Liby$3$1;

    invoke-direct {v1, p0}, Liby$3$1;-><init>(Liby$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    :cond_0
    return-void
.end method
