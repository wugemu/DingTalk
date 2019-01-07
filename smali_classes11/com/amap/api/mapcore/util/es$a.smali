.class public Lcom/amap/api/mapcore/util/es$a;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapOverlayViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/autonavi/amap/mapcore/FPoint;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IILcom/autonavi/amap/mapcore/FPoint;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/es$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 376
    iput v1, p0, Lcom/amap/api/mapcore/util/es$a;->b:I

    .line 377
    iput v1, p0, Lcom/amap/api/mapcore/util/es$a;->c:I

    .line 378
    const/16 v0, 0x33

    iput v0, p0, Lcom/amap/api/mapcore/util/es$a;->d:I

    .line 388
    iput-object p3, p0, Lcom/amap/api/mapcore/util/es$a;->a:Lcom/autonavi/amap/mapcore/FPoint;

    .line 389
    iput p4, p0, Lcom/amap/api/mapcore/util/es$a;->b:I

    .line 390
    iput p5, p0, Lcom/amap/api/mapcore/util/es$a;->c:I

    .line 391
    iput p6, p0, Lcom/amap/api/mapcore/util/es$a;->d:I

    .line 392
    return-void
.end method
