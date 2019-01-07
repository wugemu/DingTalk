.class final Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$1;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;-><init>(Ljnl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;


# direct methods
.method constructor <init>(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$1;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$1;->a:Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;

    invoke-static {v0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;->a(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;)V

    .line 171
    return-void
.end method
