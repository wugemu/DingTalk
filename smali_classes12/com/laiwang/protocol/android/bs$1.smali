.class Lcom/laiwang/protocol/android/bs$1;
.super Ljava/lang/Object;
.source "DefaultExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/bs;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/bs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/bs;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/laiwang/protocol/android/bs$1;->a:Lcom/laiwang/protocol/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    .local v0, "thread":Ljava/lang/Thread;
    const-string/jumbo v1, "ioWorker"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 24
    return-object v0
.end method
