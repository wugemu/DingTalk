.class Lcom/amap/api/mapcore/util/b$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->a(Lcom/amap/api/mapcore/util/b;)V

    .line 341
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->b(Lcom/amap/api/mapcore/util/b;)V

    .line 343
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->c(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->c(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/b;->d(Lcom/amap/api/mapcore/util/b;)Lcom/autonavi/amap/mapcore/MapCore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/a;->onResume(Lcom/autonavi/amap/mapcore/MapCore;)V

    .line 345
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->e(Lcom/amap/api/mapcore/util/b;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->f:Lcom/amap/api/mapcore/util/v;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/v;->d()V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->f(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/da;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$1;->a:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->f(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/mapcore/util/da;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/da;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :cond_2
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
