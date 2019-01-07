.class Lcom/amap/api/mapcore/util/eq$1$2;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/eq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/eq$1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/eq$1;II)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/amap/api/mapcore/util/eq$1$2;->c:Lcom/amap/api/mapcore/util/eq$1;

    iput p2, p0, Lcom/amap/api/mapcore/util/eq$1$2;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/util/eq$1$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1$2;->c:Lcom/amap/api/mapcore/util/eq$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1$2;->c:Lcom/amap/api/mapcore/util/eq$1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    .line 141
    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->a(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/util/eq$1$2;->a:I

    sub-int/2addr v2, v3

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/eq;->smoothScrollTo(II)V

    .line 142
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1$2;->c:Lcom/amap/api/mapcore/util/eq$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    iget v1, p0, Lcom/amap/api/mapcore/util/eq$1$2;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/eq$1$2;->c:Lcom/amap/api/mapcore/util/eq$1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/eq;->c(Lcom/amap/api/mapcore/util/eq;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore/util/eq;->b:I

    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$1$2;->c:Lcom/amap/api/mapcore/util/eq$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/eq$1;->a:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/eq;->d(Lcom/amap/api/mapcore/util/eq;)V

    .line 144
    return-void
.end method
