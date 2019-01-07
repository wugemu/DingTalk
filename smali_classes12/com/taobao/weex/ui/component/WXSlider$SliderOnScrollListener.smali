.class public Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliderOnScrollListener"
.end annotation


# instance fields
.field private lastPositionOffset:F

.field private selectedPosition:I

.field private target:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .locals 1
    .param p1, "target"    # Lcom/taobao/weex/ui/component/WXSlider;

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const/high16 v0, 0x42c60000    # 99.0f

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 474
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    .line 475
    iget-object v0, p1, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    .line 476
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 517
    packed-switch p1, :pswitch_data_0

    .line 529
    :goto_0
    return-void

    .line 519
    :pswitch_0
    const/high16 v0, 0x42c60000    # 99.0f

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 520
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string/jumbo v1, "scrollend"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string/jumbo v1, "scrollstart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 480
    iget v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    const/high16 v3, 0x42c60000    # 99.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 481
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    sub-float v1, p2, v2

    .line 487
    .local v1, "offset":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXSlider;->access$300(Lcom/taobao/weex/ui/component/WXSlider;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 488
    iget v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    if-ne p1, v2, :cond_3

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 491
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "offsetXRatio"

    neg-float v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string/jumbo v3, "scroll"

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    .end local v0    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->lastPositionOffset:F

    goto :goto_0

    .line 493
    :cond_3
    iget v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    if-ge p1, v2, :cond_2

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 496
    .restart local v0    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "offsetXRatio"

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->target:Lcom/taobao/weex/ui/component/WXSlider;

    const-string/jumbo v3, "scroll"

    invoke-virtual {v2, v3, v0}, Lcom/taobao/weex/ui/component/WXSlider;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 505
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderOnScrollListener;->selectedPosition:I

    .line 506
    return-void
.end method
