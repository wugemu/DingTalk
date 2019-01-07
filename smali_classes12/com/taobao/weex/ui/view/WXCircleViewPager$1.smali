.class Lcom/taobao/weex/ui/view/WXCircleViewPager$1;
.super Landroid/os/Handler;
.source "WXCircleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXCircleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/WXCircleViewPager;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 56
    const-string/jumbo v0, "[CircleViewPager] trigger auto play action"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$000(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V

    .line 58
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->this$0:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->access$100(Lcom/taobao/weex/ui/view/WXCircleViewPager;)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager$1;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
