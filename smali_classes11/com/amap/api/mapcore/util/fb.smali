.class public Lcom/amap/api/mapcore/util/fb;
.super Ljava/lang/Object;
.source "TraceManager.java"

# interfaces
.implements Liut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/fb$b;,
        Lcom/amap/api/mapcore/util/fb$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/fb$b;

.field private c:Liuu;

.field private d:Lcom/amap/api/maps/CoordinateConverter;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/amap/api/mapcore/util/fb$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/fb$b;-><init>(Lcom/amap/api/mapcore/util/fb;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->b:Lcom/amap/api/mapcore/util/fb$b;

    .line 47
    new-instance v0, Lcom/amap/api/maps/CoordinateConverter;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/maps/CoordinateConverter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->d:Lcom/amap/api/maps/CoordinateConverter;

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    .line 49
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fb;->e:Ljava/util/concurrent/ExecutorService;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/mapcore/util/fb$b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->b:Lcom/amap/api/mapcore/util/fb$b;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/fb;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->d:Lcom/amap/api/maps/CoordinateConverter;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/fb;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/fb;)Liuu;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fb;->c:Liuu;

    return-object v0
.end method


# virtual methods
.method public queryProcessedTrace(ILjava/util/List;ILiuu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Liuv;",
            ">;I",
            "Liuu;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iput-object p4, p0, Lcom/amap/api/mapcore/util/fb;->c:Liuu;

    .line 67
    new-instance v0, Lcom/amap/api/mapcore/util/fb$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/fb$a;-><init>(Lcom/amap/api/mapcore/util/fb;ILjava/util/List;I)V

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore/util/fb;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
