.class Lcom/amap/api/mapcore/util/eq$3;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/eq;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/mapcore/util/eq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/eq;I)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/amap/api/mapcore/util/eq$3;->b:Lcom/amap/api/mapcore/util/eq;

    iput p2, p0, Lcom/amap/api/mapcore/util/eq$3;->a:I

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
    .line 443
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eq$3;->b:Lcom/amap/api/mapcore/util/eq;

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/eq$3;->a:I

    iget-object v3, p0, Lcom/amap/api/mapcore/util/eq$3;->b:Lcom/amap/api/mapcore/util/eq;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/eq;->b(Lcom/amap/api/mapcore/util/eq;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/eq;->smoothScrollTo(II)V

    .line 444
    return-void
.end method
