.class Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;
.super Ljava/lang/Object;
.source "WXRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setRefreshView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    .line 81
    .local v2, "temp":Landroid/view/View;
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->val$view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    move-object v3, v2

    .line 85
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    check-cast v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    .end local v0    # "child":Landroid/view/View;
    invoke-static {v3, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->access$002(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView$1;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    invoke-static {v3}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->access$100(Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method
