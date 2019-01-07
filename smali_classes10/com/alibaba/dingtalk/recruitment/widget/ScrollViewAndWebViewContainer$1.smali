.class final Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;
.super Ljava/lang/Object;
.source "ScrollViewAndWebViewContainer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

.field private b:I


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->b:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_1

    .line 59
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getScrollY()I

    move-result v0

    .line 60
    .local v0, "scrollY":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->b:I

    if-ne v3, v0, :cond_0

    .line 61
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->b:I

    .line 62
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v3, v2}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;I)V

    .line 69
    .end local v0    # "scrollY":I
    :goto_0
    return v1

    .line 64
    .restart local v0    # "scrollY":I
    :cond_0
    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->b:I

    .line 65
    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V

    goto :goto_0

    .end local v0    # "scrollY":I
    :cond_1
    move v1, v2

    .line 69
    goto :goto_0
.end method
