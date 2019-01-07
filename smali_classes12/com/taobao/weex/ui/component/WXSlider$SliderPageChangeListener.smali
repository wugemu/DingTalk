.class public Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliderPageChangeListener"
.end annotation


# instance fields
.field private lastPos:I

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method protected constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXSlider;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "arg0"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 462
    .local v0, "root":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 465
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 419
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .param p1, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 423
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    if-ne v0, v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageSelected >>>>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lastPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v8

    .line 434
    .local v8, "realPosition":I
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v7

    .line 442
    .local v7, "event":Lcom/taobao/weex/dom/WXEvent;
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getRef()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "ref":Ljava/lang/String;
    const-string/jumbo v0, "change"

    invoke-virtual {v7, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->onScreenArea(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    const-string/jumbo v1, "index"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 447
    .local v5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 448
    .local v6, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "index"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v0, "attrs"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXSlider;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "change"

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v4, v4, Lcom/taobao/weex/ui/component/WXSlider;->params:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 454
    .end local v5    # "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->requestLayout()V

    .line 455
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXSlider;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 456
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealPosition(I)I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/WXSlider$SliderPageChangeListener;->lastPos:I

    goto/16 :goto_0
.end method
