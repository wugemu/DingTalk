.class final Lcom/taobao/taolive/ThreadUtils$4;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taolive/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$barrier:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$caughtException:Lcom/taobao/taolive/ThreadUtils$1CaughtException;

.field final synthetic val$result:Lcom/taobao/taolive/ThreadUtils$1Result;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Lcom/taobao/taolive/ThreadUtils$1CaughtException;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$result:Lcom/taobao/taolive/ThreadUtils$1Result;

    iput-object p2, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$caughtException:Lcom/taobao/taolive/ThreadUtils$1CaughtException;

    iput-object p4, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$barrier:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$result:Lcom/taobao/taolive/ThreadUtils$1Result;

    iget-object v2, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/taolive/ThreadUtils$1Result;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$barrier:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 187
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/taobao/taolive/ThreadUtils$4;->val$caughtException:Lcom/taobao/taolive/ThreadUtils$1CaughtException;

    iput-object v0, v1, Lcom/taobao/taolive/ThreadUtils$1CaughtException;->e:Ljava/lang/Exception;

    goto :goto_0
.end method
