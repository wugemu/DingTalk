.class Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSliderNeighbor;->addSubView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iput p2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->val$index:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->beginFakeDrag()Z

    .line 141
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 151
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 147
    :try_start_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->endFakeDrag()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->endFakeDrag()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    .line 151
    :catch_3
    move-exception v0

    goto :goto_0
.end method
