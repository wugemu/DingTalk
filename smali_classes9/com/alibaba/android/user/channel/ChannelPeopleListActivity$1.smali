.class final Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;
.super Ljava/lang/Object;
.source "ChannelPeopleListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

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
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0, p3}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I

    .line 113
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
    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I

    move-result v2

    add-int v0, v1, v2

    .line 98
    .local v0, "lastVisibleItemIndex":I
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->c(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->d(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->b(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->e(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;I)I

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;->a(Lcom/alibaba/android/user/channel/ChannelPeopleListActivity;Z)V

    .line 106
    .end local v0    # "lastVisibleItemIndex":I
    :cond_0
    return-void
.end method
