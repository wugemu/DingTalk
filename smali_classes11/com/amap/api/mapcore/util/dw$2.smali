.class Lcom/amap/api/mapcore/util/dw$2;
.super Lcom/amap/api/mapcore/util/dw$e;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/dw;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/dw$e",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/dw;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/dw;)V
    .locals 1

    .prologue
    .line 351
    iput-object p1, p0, Lcom/amap/api/mapcore/util/dw$2;->a:Lcom/amap/api/mapcore/util/dw;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dw$e;-><init>(Lcom/amap/api/mapcore/util/dw$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw$2;->a:Lcom/amap/api/mapcore/util/dw;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/dw;->a(Lcom/amap/api/mapcore/util/dw;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 355
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 357
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dw$2;->a:Lcom/amap/api/mapcore/util/dw;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dw$2;->a:Lcom/amap/api/mapcore/util/dw;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dw$2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/dw;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/dw;->a(Lcom/amap/api/mapcore/util/dw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
