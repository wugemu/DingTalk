.class public Lcom/alibaba/android/scan/widget/ToolScanTopView;
.super Landroid/widget/RelativeLayout;
.source "ToolScanTopView.java"

# interfaces
.implements Lcom/alibaba/android/scan/widget/ScaleFinderView$a;
.implements Lcom/alibaba/android/scan/widget/TorchView$a;
.implements Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/scan/widget/ToolScanTopView$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

.field public b:Lcom/alibaba/android/scan/widget/ScanRayView;

.field c:Lcom/alibaba/android/scan/widget/TorchView;

.field public d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

.field private e:Lcom/alibaba/android/scan/widget/ScaleFinderView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->j:I

    .line 1063
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lelh$f;->view_ma_tool_top:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1064
    sget v0, Lelh$e;->scale_finder_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/widget/ScaleFinderView;

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->e:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->e:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/scan/widget/ScaleFinderView;->setListener(Lcom/alibaba/android/scan/widget/ScaleFinderView$a;)V

    .line 1066
    sget v0, Lelh$e;->scan_ray_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/widget/ScanRayView;

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    .line 1067
    sget v0, Lelh$e;->txt_qr_barcode_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->f:Landroid/widget/TextView;

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->e:Lcom/alibaba/android/scan/widget/ScaleFinderView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/scan/widget/ScanRayView;->setFinderView(Lcom/alibaba/android/scan/widget/ScaleFinderView;)V

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    new-instance v1, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/scan/widget/ToolScanTopView$1;-><init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/scan/widget/ScanRayView;->post(Ljava/lang/Runnable;)Z

    .line 1080
    sget v0, Lelh$e;->torch_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/scan/widget/TorchView;

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/scan/widget/TorchView;->setOnTorchClickListener(Lcom/alibaba/android/scan/widget/TorchView$a;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/scan/widget/ToolScanTopView;)Lcom/alibaba/android/scan/widget/ScanRayView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/scan/widget/ToolScanTopView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/scan/widget/ToolScanTopView;I)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/scan/widget/ToolScanTopView;
    .param p1, "x1"    # I

    .prologue
    const/4 v5, 0x0

    .line 19
    .line 3173
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    if-eqz v0, :cond_1

    .line 3174
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 3680
    iget-object v1, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b:Lemq;

    if-eqz v1, :cond_1

    .line 3681
    iget-object v0, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->b:Lemq;

    int-to-float v1, p1

    .line 4027
    const-string/jumbo v2, "AutoZoomOperator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startAutoZoom : rate is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", curIndex is 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljmp;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4028
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    iget-boolean v2, v0, Lemq;->a:Z

    if-eqz v2, :cond_2

    .line 4029
    :cond_0
    iput-boolean v5, v0, Lemq;->a:Z

    .line 4030
    :cond_1
    :goto_0
    return-void

    .line 4032
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lemq;->a:Z

    .line 4033
    float-to-int v1, v1

    invoke-virtual {v0, v5, v1}, Lemq;->a(II)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/hardware/Camera;II)Landroid/graphics/Rect;
    .locals 26
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const/16 v18, 0x0

    .line 143
    :goto_0
    return-object v18

    .line 98
    :cond_0
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v10, v0, [I

    .line 99
    .local v10, "location":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/alibaba/android/scan/widget/ScanRayView;->getLocationOnScreen([I)V

    .line 100
    new-instance v12, Landroid/graphics/Rect;

    const/16 v21, 0x0

    aget v21, v10, v21

    const/16 v22, 0x1

    aget v22, v10, v22

    const/16 v23, 0x0

    aget v23, v10, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    move-object/from16 v24, v0

    .line 101
    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/android/scan/widget/ScanRayView;->getWidth()I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x1

    aget v24, v10, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/android/scan/widget/ScanRayView;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 104
    .local v12, "r":Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 108
    .local v20, "size":Landroid/hardware/Camera$Size;
    if-nez v20, :cond_1

    .line 109
    const/16 v18, 0x0

    goto :goto_0

    .line 106
    .end local v20    # "size":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v21

    const/16 v18, 0x0

    goto :goto_0

    .line 111
    .restart local v20    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v14, v22, v24

    .line 112
    .local v14, "rateX":D
    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v16, v22, v24

    .line 114
    .local v16, "rateY":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/android/scan/widget/ScanRayView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa999999999999aL    # 0.05

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v7, v0

    .line 115
    .local v7, "expandX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/android/scan/widget/ScanRayView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fa999999999999aL    # 0.05

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v8, v0

    .line 116
    .local v8, "expandY":I
    new-instance v19, Landroid/graphics/Rect;

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v21, v21, v8

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v16

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v22, v22, v7

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v23, v23, v8

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v16

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v24, v24, v7

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v14

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    .local v19, "resRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    if-gez v21, :cond_2

    const/16 v21, 0x0

    :goto_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    if-gez v22, :cond_3

    const/16 v22, 0x0

    .line 125
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v23

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    .line 126
    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v24

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    :goto_4
    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v9, "finalRect":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x4

    mul-int/lit8 v21, v21, 0x4

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x4

    mul-int/lit8 v22, v22, 0x4

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x4

    mul-int/lit8 v23, v23, 0x4

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x4

    mul-int/lit8 v24, v24, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .local v13, "rect1":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 135
    .local v11, "max":I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    div-int/lit8 v21, v21, 0x8

    mul-int/lit8 v6, v21, 0x4

    .line 138
    .local v6, "diff":I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 139
    new-instance v18, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, v6

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v18, "rect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 122
    .end local v6    # "diff":I
    .end local v9    # "finalRect":Landroid/graphics/Rect;
    .end local v11    # "max":I
    .end local v13    # "rect1":Landroid/graphics/Rect;
    .end local v18    # "rect2":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    goto/16 :goto_2

    .line 125
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v23

    goto/16 :goto_3

    .line 126
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v24

    goto/16 :goto_4

    .line 141
    .restart local v6    # "diff":I
    .restart local v9    # "finalRect":Landroid/graphics/Rect;
    .restart local v11    # "max":I
    .restart local v13    # "rect1":Landroid/graphics/Rect;
    :cond_6
    new-instance v18, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v18    # "rect2":Landroid/graphics/Rect;
    goto/16 :goto_0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 236
    iget v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .line 2389
    iget-object v1, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    if-eqz v1, :cond_1

    .line 2390
    iget-object v0, v0, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a:Lcom/alipay/mobile/bqcscanservice/f;

    const/high16 v1, -0x80000000

    invoke-interface {v0, v1}, Lcom/alipay/mobile/bqcscanservice/f;->a(I)V

    .line 242
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 207
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

    invoke-interface {v1}, Lcom/alibaba/android/scan/widget/ToolScanTopView$a;->a()Z

    move-result v0

    .line 1214
    .local v0, "isTorchOn":Z
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    if-eqz v1, :cond_0

    .line 1215
    iget-object v2, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->c:Lcom/alibaba/android/scan/widget/TorchView;

    .line 2051
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/TorchView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/TorchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_1

    sget v1, Lelh$d;->torch_on:I

    :goto_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2052
    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/TorchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lelh$h;->dt_qrscan_flashlight_click_to_off:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2054
    :goto_1
    iget-object v3, v2, Lcom/alibaba/android/scan/widget/TorchView;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    invoke-virtual {v2, v1}, Lcom/alibaba/android/scan/widget/TorchView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    .end local v0    # "isTorchOn":Z
    :cond_0
    return-void

    .line 2051
    .restart local v0    # "isTorchOn":Z
    :cond_1
    sget v1, Lelh$d;->torch_off:I

    goto :goto_0

    .line 2053
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/android/scan/widget/TorchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lelh$h;->dt_qrscan_flashlight_click_to_on:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public getCropWidth()F
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->b:Lcom/alibaba/android/scan/widget/ScanRayView;

    invoke-virtual {v0}, Lcom/alibaba/android/scan/widget/ScanRayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    return v0
.end method

.method public onGetAvgGray(I)V
    .locals 1
    .param p1, "gray"    # I

    .prologue
    .line 180
    if-eqz p1, :cond_1

    .line 181
    const/16 v0, 0x46

    if-ge p1, v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/alibaba/android/scan/widget/ToolScanTopView$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/scan/widget/ToolScanTopView$3;-><init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;)V

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->g:Ljava/lang/Runnable;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    const/16 v0, 0x8c

    if-le p1, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->h:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 193
    new-instance v0, Lcom/alibaba/android/scan/widget/ToolScanTopView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/scan/widget/ToolScanTopView$4;-><init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;)V

    iput-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->h:Ljava/lang/Runnable;

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onGetMaProportion(F)V
    .locals 7
    .param p1, "v"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v6, 0x42960000    # 75.0f

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-virtual {v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 158
    float-to-double v2, p1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v2, v4

    if-lez v1, :cond_2

    float-to-double v2, p1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v2, v4

    if-gez v1, :cond_2

    iget v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->j:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3

    .line 159
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    goto :goto_0

    .line 162
    :cond_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    .line 163
    mul-float v1, v6, p1

    sub-float v1, v6, v1

    float-to-int v0, v1

    .line 164
    .local v0, "zoom":I
    new-instance v1, Lcom/alibaba/android/scan/widget/ToolScanTopView$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/scan/widget/ToolScanTopView$2;-><init>(Lcom/alibaba/android/scan/widget/ToolScanTopView;I)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFromPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "fromPage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 281
    const-string/jumbo v0, "contact_name"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->f:Landroid/widget/TextView;

    sget v1, Lelh$h;->dt_scan_tool_top_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public setTopViewCallback(Lcom/alibaba/android/scan/widget/ToolScanTopView$a;)V
    .locals 0
    .param p1, "callback"    # Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->a:Lcom/alibaba/android/scan/widget/ToolScanTopView$a;

    .line 148
    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "ratio"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 246
    iget v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->i:I

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/scan/widget/ToolScanTopView;->d:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->a(I)V

    .line 252
    :cond_1
    return-void
.end method
