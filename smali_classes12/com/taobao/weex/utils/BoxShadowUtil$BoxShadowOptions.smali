.class public Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxShadowOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    }
.end annotation


# instance fields
.field public blur:F

.field public color:I

.field public hShadow:F

.field public isInset:Z

.field private optionParamParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;",
            ">;"
        }
    .end annotation
.end field

.field public radii:[F

.field public spread:F

.field public topLeft:Landroid/graphics/PointF;

.field public vShadow:F

.field public viewHeight:I

.field public viewWidth:I

.field private viewport:I


# direct methods
.method private constructor <init>(I)V
    .locals 5
    .param p1, "vp"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/16 v2, 0x2ee

    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:I

    .line 566
    iput v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 567
    iput v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    .line 568
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    .line 569
    const/high16 v2, -0x1000000

    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 570
    iput-boolean v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 572
    iput v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 573
    iput v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    .line 574
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 577
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:I

    if-eqz v2, :cond_0

    .line 578
    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:I

    .line 580
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    .line 582
    new-instance v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 593
    .local v1, "spreadParser":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 603
    .local v0, "blurParser":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    return-void

    .line 568
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(ILcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/taobao/weex/utils/BoxShadowUtil$1;

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .prologue
    .line 560
    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:I

    return v0
.end method


# virtual methods
.method public getTargetCanvasRect()Landroid/graphics/Rect;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 635
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 636
    .local v1, "canvasWidth":I
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 637
    .local v0, "canvasHeight":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .locals 5
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 608
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 609
    new-instance v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:I

    invoke-direct {v1, v2}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(I)V

    .line 610
    .local v1, "scaledOptions":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 611
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 612
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 613
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float/2addr v2, p1

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 615
    iget-object v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v3, v3, v0

    mul-float/2addr v3, p1

    aput v3, v2, v0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    .line 618
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 620
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v2, :cond_1

    .line 621
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 622
    iget-object v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 623
    iget-object v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 626
    :cond_1
    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    iput v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 627
    iget-boolean v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    iput-boolean v2, v1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 628
    const-string/jumbo v2, "BoxShadowUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Scaled BoxShadowOptions: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v0    # "i":I
    .end local v1    # "scaledOptions":Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "r":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "BoxShadowOptions{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 646
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "h-shadow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 647
    const-string/jumbo v2, ", v-shadow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 648
    const-string/jumbo v2, ", blur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 649
    const-string/jumbo v2, ", spread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 650
    const-string/jumbo v2, ", corner-radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    const-string/jumbo v2, ", color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string/jumbo v2, ", inset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 653
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
