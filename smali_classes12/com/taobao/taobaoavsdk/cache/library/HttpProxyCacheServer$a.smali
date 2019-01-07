.class final Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;


# direct methods
.method private constructor <init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;B)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;-><init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 445
    .line 1449
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$a;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->c(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 445
    return-object v0
.end method
