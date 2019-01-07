.class public final Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljoc;

.field private c:Ljoa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    invoke-static {p1}, Ljny;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->a:Ljava/io/File;

    .line 467
    new-instance v0, Ljog;

    const-wide/32 v2, 0x12c00000

    const/16 v1, 0x14

    invoke-direct {v0, v2, v3, v1}, Ljog;-><init>(JI)V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->c:Ljoa;

    .line 468
    new-instance v0, Ljof;

    invoke-direct {v0}, Ljof;-><init>()V

    iput-object v0, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->b:Ljoc;

    .line 469
    return-void
.end method

.method static synthetic a(Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;)Ljnl;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->a()Ljnl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljnl;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    new-instance v0, Ljnl;

    iget-object v1, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->b:Ljoc;

    iget-object v3, p0, Lcom/taobao/taobaoavsdk/cache/library/HttpProxyCacheServer$Builder;->c:Ljoa;

    invoke-direct {v0, v1, v2, v3}, Ljnl;-><init>(Ljava/io/File;Ljoc;Ljoa;)V

    return-object v0
.end method
