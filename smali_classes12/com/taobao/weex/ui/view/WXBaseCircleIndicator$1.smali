.class Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;
.super Landroid/support/v4/view/ViewPager$g;
.source "WXBaseCircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->setCircleViewPager(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$g;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    invoke-static {v1}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->access$100(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;)Lcom/taobao/weex/ui/view/WXCircleViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->access$002(Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;I)I

    .line 107
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator$1;->this$0:Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXBaseCircleIndicator;->invalidate()V

    .line 108
    return-void
.end method
