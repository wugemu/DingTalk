.class public Lorg/webrtc/RendererCommon$VideoLayoutMeasure;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoLayoutMeasure"
.end annotation


# instance fields
.field private scalingTypeMatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

.field private scalingTypeMismatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/RendererCommon$ScalingType;

    iput-object v0, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    .line 116
    sget-object v0, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/RendererCommon$ScalingType;

    iput-object v0, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    return-void
.end method


# virtual methods
.method public measure(IIII)Landroid/graphics/Point;
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "frameWidth"    # I
    .param p4, "frameHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    const v6, 0x7fffffff

    invoke-static {v6, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    .line 132
    .local v4, "maxWidth":I
    const v6, 0x7fffffff

    invoke-static {v6, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    .line 133
    .local v3, "maxHeight":I
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz v4, :cond_0

    if-nez v3, :cond_2

    .line 134
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 152
    :cond_1
    :goto_0
    return-object v2

    .line 138
    :cond_2
    int-to-float v6, p3

    int-to-float v7, p4

    div-float v1, v6, v7

    .line 139
    .local v1, "frameAspect":F
    int-to-float v6, v4

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 140
    .local v0, "displayAspect":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v6

    if-lez v6, :cond_4

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    if-ne v7, v6, :cond_6

    iget-object v5, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    .line 143
    .local v5, "scalingType":Lorg/webrtc/RendererCommon$ScalingType;
    :goto_3
    invoke-static {v5, v1, v4, v3}, Lorg/webrtc/RendererCommon;->getDisplaySize(Lorg/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;

    move-result-object v2

    .line 146
    .local v2, "layoutSize":Landroid/graphics/Point;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_3

    .line 147
    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 149
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_1

    .line 150
    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 140
    .end local v2    # "layoutSize":Landroid/graphics/Point;
    .end local v5    # "scalingType":Lorg/webrtc/RendererCommon$ScalingType;
    :cond_4
    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    goto :goto_3
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 0
    .param p1, "scalingType"    # Lorg/webrtc/RendererCommon$ScalingType;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    .line 120
    iput-object p1, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    .line 121
    return-void
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 0
    .param p1, "scalingTypeMatchOrientation"    # Lorg/webrtc/RendererCommon$ScalingType;
    .param p2, "scalingTypeMismatchOrientation"    # Lorg/webrtc/RendererCommon$ScalingType;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    .line 126
    iput-object p2, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/RendererCommon$ScalingType;

    .line 127
    return-void
.end method
