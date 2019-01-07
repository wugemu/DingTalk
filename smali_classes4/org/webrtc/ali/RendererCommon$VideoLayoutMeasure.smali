.class public Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoLayoutMeasure"
.end annotation


# instance fields
.field private scalingTypeMatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

.field private scalingTypeMismatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    sget-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/ali/RendererCommon$ScalingType;

    iput-object v0, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    .line 136
    sget-object v0, Lorg/webrtc/ali/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/ali/RendererCommon$ScalingType;

    iput-object v0, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

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
    .line 151
    const v6, 0x7fffffff

    invoke-static {v6, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v4

    .line 152
    .local v4, "maxWidth":I
    const v6, 0x7fffffff

    invoke-static {v6, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    .line 153
    .local v3, "maxHeight":I
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz v4, :cond_0

    if-nez v3, :cond_2

    .line 154
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 172
    :cond_1
    :goto_0
    return-object v2

    .line 158
    :cond_2
    int-to-float v6, p3

    int-to-float v7, p4

    div-float v1, v6, v7

    .line 159
    .local v1, "frameAspect":F
    int-to-float v6, v4

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 160
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

    iget-object v5, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    .line 163
    .local v5, "scalingType":Lorg/webrtc/ali/RendererCommon$ScalingType;
    :goto_3
    invoke-static {v5, v1, v4, v3}, Lorg/webrtc/ali/RendererCommon;->getDisplaySize(Lorg/webrtc/ali/RendererCommon$ScalingType;FII)Landroid/graphics/Point;

    move-result-object v2

    .line 166
    .local v2, "layoutSize":Landroid/graphics/Point;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_3

    .line 167
    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 169
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v7, :cond_1

    .line 170
    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 160
    .end local v2    # "layoutSize":Landroid/graphics/Point;
    .end local v5    # "scalingType":Lorg/webrtc/ali/RendererCommon$ScalingType;
    :cond_4
    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    goto :goto_3
.end method

.method public setScalingType(Lorg/webrtc/ali/RendererCommon$ScalingType;)V
    .locals 0
    .param p1, "scalingType"    # Lorg/webrtc/ali/RendererCommon$ScalingType;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    .line 140
    iput-object p1, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    .line 141
    return-void
.end method

.method public setScalingType(Lorg/webrtc/ali/RendererCommon$ScalingType;Lorg/webrtc/ali/RendererCommon$ScalingType;)V
    .locals 0
    .param p1, "scalingTypeMatchOrientation"    # Lorg/webrtc/ali/RendererCommon$ScalingType;
    .param p2, "scalingTypeMismatchOrientation"    # Lorg/webrtc/ali/RendererCommon$ScalingType;

    .prologue
    .line 145
    iput-object p1, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    .line 146
    iput-object p2, p0, Lorg/webrtc/ali/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lorg/webrtc/ali/RendererCommon$ScalingType;

    .line 147
    return-void
.end method
