.class final Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;
.super Ljava/lang/Object;
.source "TaoLiveVideoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;


# direct methods
.method constructor <init>(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "renderUIView  onTouch  event X = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->i(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->c:Ljos;

    iget v2, v2, Ljos;->c:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 823
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 784
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;F)F

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;F)F

    .line 786
    const/4 v2, 0x1

    goto :goto_0

    .line 788
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->j(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v3}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onClick--------------- x = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "videoWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " videoHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "viewWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    .line 791
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    const/16 v18, 0x0

    .line 793
    .local v18, "w":I
    const/4 v12, 0x0

    .line 794
    .local v12, "h":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 796
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 797
    .local v13, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "baseSize"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 798
    .local v9, "baseSize":Ljava/lang/String;
    const-string/jumbo v2, "-"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 799
    .local v15, "strs":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Ljot;->a(Ljava/lang/String;)I

    move-result v18

    .line 800
    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-static {v2}, Ljot;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 805
    .end local v9    # "baseSize":Ljava/lang/String;
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v15    # "strs":[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v2, v3, v0}, Ljot;->a(III)I

    move-result v19

    .line 806
    .local v19, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v3, v3, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3, v12}, Ljot;->b(III)I

    move-result v20

    .line 808
    .local v20, "y":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSingleTapUp--------------- transX = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " transY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v2}, Ljot;->a(IILjava/lang/String;)Ljot$a;

    move-result-object v14

    .line 810
    .local v14, "rectInfo":Ljot$a;
    if-eqz v14, :cond_0

    iget-object v2, v14, Ljot$a;->a:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget v2, v14, Ljot$a;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v14, Ljot$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v2, v3, v0}, Ljot;->c(III)I

    move-result v17

    .line 812
    .local v17, "transW":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    iget-object v2, v2, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v14, Ljot$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3, v12}, Ljot;->d(III)I

    move-result v16

    .line 814
    .local v16, "transH":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v2}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->n(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v10, v2, Landroid/util/DisplayMetrics;->density:F

    .line 815
    .local v10, "density":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    div-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    div-float/2addr v4, v10

    float-to-int v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    div-float/2addr v5, v10

    float-to-int v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    div-float/2addr v6, v10

    float-to-int v6, v6

    iget v7, v14, Ljot$a;->b:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$8;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    invoke-static {v8}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->m(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a(Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;IIIIILjava/lang/String;)V

    .line 816
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 801
    .end local v10    # "density":F
    .end local v14    # "rectInfo":Ljot$a;
    .end local v16    # "transH":I
    .end local v17    # "transW":I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :catch_0
    move-exception v11

    .line 802
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 782
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
