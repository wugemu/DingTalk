.class final Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "startSignal"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;->b:Ljava/util/concurrent/CountDownLatch;

    .line 422
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 427
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$c;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->b(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    .line 428
    return-void
.end method
