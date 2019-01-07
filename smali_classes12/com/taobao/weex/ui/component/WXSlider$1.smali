.class Lcom/taobao/weex/ui/component/WXSlider$1;
.super Ljava/lang/Object;
.source "WXSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSlider;->addSubView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSlider;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXSlider;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

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
    .line 195
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$100(Lcom/taobao/weex/ui/component/WXSlider;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$002(Lcom/taobao/weex/ui/component/WXSlider;I)I

    .line 196
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSlider;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$000(Lcom/taobao/weex/ui/component/WXSlider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(I)V

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$002(Lcom/taobao/weex/ui/component/WXSlider;I)I

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$1;->this$0:Lcom/taobao/weex/ui/component/WXSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/WXSlider;->access$202(Lcom/taobao/weex/ui/component/WXSlider;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 199
    return-void
.end method
