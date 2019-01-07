.class public final Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;
.super Ljava/lang/Object;
.source "ScrollViewAndWebViewContainer.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 3
    .param p1, "v"    # Landroid/support/v4/widget/NestedScrollView;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;I)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->e(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 127
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$2;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;I)V

    goto :goto_0
.end method
