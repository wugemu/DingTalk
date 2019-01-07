.class final Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;
.super Ljava/lang/Object;
.source "ChannelApplyActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelApplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->c(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->d(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I

    .line 138
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 119
    if-nez p2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->c(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->d(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->e(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 123
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->e(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->f(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->d(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;I)I

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyActivity$2;->a:Lcom/alibaba/android/user/channel/ChannelApplyActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/channel/ChannelApplyActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyActivity;Z)V

    .line 131
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
