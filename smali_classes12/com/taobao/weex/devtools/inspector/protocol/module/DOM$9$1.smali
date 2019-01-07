.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/StyleAccumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

.field final synthetic val$elementForNodeId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->val$elementForNodeId:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public store(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 40
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isDefault"    # Z

    .prologue
    .line 335
    const-wide/16 v8, 0x0

    .line 336
    .local v8, "left":D
    const-wide/16 v30, 0x0

    .line 337
    .local v30, "right":D
    const-wide/16 v32, 0x0

    .line 338
    .local v32, "top":D
    const-wide/16 v4, 0x0

    .line 340
    .local v4, "bottom":D
    const-wide/16 v24, 0x0

    .line 341
    .local v24, "paddingLeft":D
    const-wide/16 v26, 0x0

    .line 342
    .local v26, "paddingRight":D
    const-wide/16 v28, 0x0

    .line 343
    .local v28, "paddingTop":D
    const-wide/16 v22, 0x0

    .line 345
    .local v22, "paddingBottom":D
    const-wide/16 v14, 0x0

    .line 346
    .local v14, "marginLeft":D
    const-wide/16 v16, 0x0

    .line 347
    .local v16, "marginRight":D
    const-wide/16 v18, 0x0

    .line 348
    .local v18, "marginTop":D
    const-wide/16 v12, 0x0

    .line 356
    .local v12, "marginBottom":D
    const/16 v34, 0x0

    .line 357
    .local v34, "view":Landroid/view/View;
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v35

    if-eqz v35, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->val$elementForNodeId:Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Landroid/view/View;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->val$elementForNodeId:Ljava/lang/Object;

    move-object/from16 v34, v0

    .end local v34    # "view":Landroid/view/View;
    check-cast v34, Landroid/view/View;

    .line 367
    .restart local v34    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v34, :cond_2

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->isShown()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 368
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/screencast/ScreencastDispatcher;->getsBitmapScale()F

    move-result v21

    .line 369
    .local v21, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getWidth()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->width:Ljava/lang/Integer;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getHeight()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->height:Ljava/lang/Integer;

    .line 371
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->isNativeMode()Z

    move-result v35

    if-nez v35, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->width:Ljava/lang/Integer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    mul-int/lit16 v0, v0, 0x2ee

    move/from16 v36, v0

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v37

    div-int v36, v36, v37

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->width:Ljava/lang/Integer;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->height:Ljava/lang/Integer;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    mul-int/lit16 v0, v0, 0x2ee

    move/from16 v36, v0

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v37

    div-int v36, v36, v37

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->height:Ljava/lang/Integer;

    .line 376
    :cond_1
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v7, v0, [I

    .line 377
    .local v7, "location":[I
    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 379
    const/16 v35, 0x0

    aget v35, v7, v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v8, v0

    .line 380
    const/16 v35, 0x1

    aget v35, v7, v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v32, v0

    .line 381
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    add-double v30, v8, v36

    .line 382
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    add-double v4, v32, v36

    .line 384
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getPaddingLeft()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 385
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getPaddingTop()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 386
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getPaddingRight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 387
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getPaddingBottom()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 389
    move-object/from16 v0, v34

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 390
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 391
    .local v6, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v6, :cond_2

    .line 392
    instance-of v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v35, v0

    if-eqz v35, :cond_2

    move-object v11, v6

    .line 393
    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 394
    .local v11, "margins":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v14, v0

    .line 395
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 396
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 397
    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v21

    move/from16 v0, v35

    float-to-double v12, v0

    .line 402
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "location":[I
    .end local v11    # "margins":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v21    # "scale":F
    :cond_2
    new-instance v20, Ljava/util/ArrayList;

    const/16 v35, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    .local v20, "padding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const-wide/16 v36, 0x0

    add-double v36, v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    const-wide/16 v36, 0x0

    add-double v36, v36, v32

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const-wide/16 v36, 0x0

    sub-double v36, v30, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    const-wide/16 v36, 0x0

    add-double v36, v36, v32

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-wide/16 v36, 0x0

    sub-double v36, v30, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const-wide/16 v36, 0x0

    sub-double v36, v4, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const-wide/16 v36, 0x0

    add-double v36, v36, v8

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    const-wide/16 v36, 0x0

    sub-double v36, v4, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->padding:Ljava/util/List;

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v3, "content":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const-wide/16 v36, 0x0

    add-double v36, v36, v8

    add-double v36, v36, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    const-wide/16 v36, 0x0

    add-double v36, v36, v32

    add-double v36, v36, v28

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    const-wide/16 v36, 0x0

    sub-double v36, v30, v36

    sub-double v36, v36, v26

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    const-wide/16 v36, 0x0

    add-double v36, v36, v32

    add-double v36, v36, v28

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const-wide/16 v36, 0x0

    sub-double v36, v30, v36

    sub-double v36, v36, v26

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    const-wide/16 v36, 0x0

    sub-double v36, v4, v36

    sub-double v36, v36, v22

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    const-wide/16 v36, 0x0

    add-double v36, v36, v8

    add-double v36, v36, v24

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-wide/16 v36, 0x0

    sub-double v36, v4, v36

    sub-double v36, v36, v22

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->content:Ljava/util/List;

    .line 424
    new-instance v2, Ljava/util/ArrayList;

    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    .local v2, "border":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v2, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->border:Ljava/util/List;

    .line 435
    new-instance v10, Ljava/util/ArrayList;

    const/16 v35, 0x8

    move/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 436
    .local v10, "margin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    sub-double v36, v8, v14

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sub-double v36, v32, v18

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    add-double v36, v30, v16

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    sub-double v36, v32, v18

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-double v36, v30, v16

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-double v36, v4, v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sub-double v36, v8, v14

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    add-double v36, v4, v12

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->this$1:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9;->val$model:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iput-object v10, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$BoxModel;->margin:Ljava/util/List;

    .line 445
    return-void

    .line 362
    .end local v2    # "border":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v3    # "content":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v10    # "margin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v20    # "padding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->val$elementForNodeId:Ljava/lang/Object;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXComponent;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$9$1;->val$elementForNodeId:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual/range {v35 .. v35}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v34

    goto/16 :goto_0
.end method
