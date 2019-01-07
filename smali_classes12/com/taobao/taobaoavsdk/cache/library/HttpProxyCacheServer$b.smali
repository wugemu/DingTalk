.class final Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;Ljava/net/Socket;)V
    .locals 0
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;->b:Ljava/net/Socket;

    .line 437
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 441
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$b;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;Ljava/net/Socket;)V

    .line 442
    return-void
.end method
