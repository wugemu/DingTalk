.class Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;II)V
    .locals 7
    .param p2, "shadowRadius"    # I
    .param p3, "circleDiameter"    # I

    .prologue
    .line 283
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    .line 284
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 285
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 286
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowRadius:I

    .line 287
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    .line 288
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowRadius:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 292
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 293
    return-void

    .line 288
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getWidth()I

    move-result v1

    .line 298
    .local v1, "viewWidth":I
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getHeight()I

    move-result v0

    .line 299
    .local v0, "viewHeight":I
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    return-void
.end method
