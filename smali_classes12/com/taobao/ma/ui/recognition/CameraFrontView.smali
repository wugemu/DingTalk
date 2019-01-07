.class public Lcom/taobao/ma/ui/recognition/CameraFrontView;
.super Landroid/view/SurfaceView;
.source "CameraFrontView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field c:Landroid/view/SurfaceHolder;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    .line 52
    const/16 v1, 0x18

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    .line 56
    const/16 v1, 0x64

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->m:I

    .line 62
    iput-boolean v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->o:Z

    .line 1080
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    .line 1081
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1082
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1083
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1084
    invoke-virtual {p0, v4}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->setZOrderOnTop(Z)V

    .line 1088
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    .line 1089
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1090
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1091
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$b;->circle_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1093
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    .line 1094
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1095
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    const/high16 v2, -0x60000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1096
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1097
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lelh$c;->scan_vcard_top_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->n:I

    .line 72
    if-eqz v0, :cond_0

    .line 73
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    .line 74
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    .line 75
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->m:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->m:I

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    .line 102
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->j:I

    .line 104
    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->j:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->m:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->n:I

    sub-int v1, v3, v4

    .line 105
    .local v1, "viewHeight":I
    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    int-to-float v3, v3

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 106
    .local v2, "width":I
    int-to-double v4, v2

    const-wide v6, 0x3ffab851eb851eb8L    # 1.67

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 107
    .local v0, "height":I
    int-to-float v3, v1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    sub-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    .line 109
    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    .line 110
    sub-int v3, v1, v0

    shr-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->n:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    .line 111
    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    return-void
.end method

.method a(Landroid/graphics/Canvas;III)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "rotate"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 217
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 220
    const/high16 v2, 0x42b40000    # 90.0f

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lelh$h;->dt_user_recognize_card:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "text":Ljava/lang/String;
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    const/high16 v2, -0x3d4c0000    # -90.0f

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 224
    return-void
.end method

.method public getCardRect()Landroid/graphics/Rect;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getGap()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    return v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->j:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getRectSize()Landroid/graphics/Point;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 134
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->j:I

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->m:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 286
    .line 2141
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    .line 2142
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 2144
    if-eqz v0, :cond_0

    .line 2148
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a()V

    .line 2149
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2150
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2151
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2153
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    add-int/lit8 v1, v1, 0x28

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2205
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 2206
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2207
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2208
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2209
    const/high16 v4, 0x42b40000    # 90.0f

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2210
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraFrontView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lelh$h;->camera_card_tip:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2211
    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2212
    const/high16 v3, -0x3d4c0000    # -90.0f

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2159
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2160
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2163
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2164
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2167
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2168
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2171
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2172
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->l:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2175
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2189
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->h:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    .line 2192
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    int-to-float v3, v1

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    move v1, v7

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2194
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->d:I

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2196
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->f:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->e:I

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    int-to-float v3, v3

    iget v4, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2198
    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->g:I

    iget v2, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->k:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->i:I

    int-to-float v3, v1

    iget v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->j:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->a:Landroid/graphics/Paint;

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2200
    iget-object v1, p0, Lcom/taobao/ma/ui/recognition/CameraFrontView;->c:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 287
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 229
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 292
    return-void
.end method
