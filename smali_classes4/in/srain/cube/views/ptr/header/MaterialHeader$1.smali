.class final Lin/srain/cube/views/ptr/header/MaterialHeader$1;
.super Landroid/view/animation/Animation;
.source "MaterialHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/MaterialHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/MaterialHeader;


# direct methods
.method constructor <init>(Lin/srain/cube/views/ptr/header/MaterialHeader;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a(Lin/srain/cube/views/ptr/header/MaterialHeader;F)F

    .line 27
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {v0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->b(Lin/srain/cube/views/ptr/header/MaterialHeader;)Lkfc;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-static {v2}, Lin/srain/cube/views/ptr/header/MaterialHeader;->a(Lin/srain/cube/views/ptr/header/MaterialHeader;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lkfc;->setAlpha(I)V

    .line 28
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/MaterialHeader$1;->a:Lin/srain/cube/views/ptr/header/MaterialHeader;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/header/MaterialHeader;->invalidate()V

    .line 29
    return-void
.end method
