.class public Lcom/amap/api/mapcore/util/ec$a;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/File;

.field public d:Landroid/graphics/Bitmap$CompressFormat;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/high16 v0, 0x500000

    iput v0, p0, Lcom/amap/api/mapcore/util/ec$a;->a:I

    .line 510
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/amap/api/mapcore/util/ec$a;->b:I

    .line 512
    invoke-static {}, Lcom/amap/api/mapcore/util/ec;->f()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 513
    const/16 v0, 0x64

    iput v0, p0, Lcom/amap/api/mapcore/util/ec$a;->e:I

    .line 514
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ec$a;->f:Z

    .line 515
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/ec$a;->g:Z

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ec$a;->h:Z

    .line 529
    invoke-static {p1, p2}, Lcom/amap/api/mapcore/util/ec;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec$a;->c:Ljava/io/File;

    .line 530
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 559
    iput p1, p0, Lcom/amap/api/mapcore/util/ec$a;->a:I

    .line 560
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 568
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ec$a;->c:Ljava/io/File;

    .line 569
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ec$a;->f:Z

    .line 573
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 563
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/ec$a;->g:Z

    .line 564
    :cond_0
    iput p1, p0, Lcom/amap/api/mapcore/util/ec$a;->b:I

    .line 565
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ec$a;->g:Z

    .line 577
    return-void
.end method
